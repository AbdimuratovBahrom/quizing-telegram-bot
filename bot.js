require('dotenv').config();
const TelegramBot = require('node-telegram-bot-api');
const db = require('./db');
const express = require('express');

const token = process.env.BOT_TOKEN;
const url = process.env.WEBHOOK_URL;
const port = process.env.PORT || 3000;

const app = express();
app.use(express.json());

// Создаем Telegram бота без порта, только URL вебхука
const bot = new TelegramBot(token);
bot.setWebHook(`${url}/bot${token}`);

app.post(`/bot${token}`, (req, res) => {
  bot.processUpdate(req.body);
  res.sendStatus(200);
});

app.get('/', (req, res) => res.send('🤖 Quiz Bot running!'));

let users = {};

bot.onText(/\/start/, msg => {
  const chatId = msg.chat.id;
  users[chatId] = { score: 0, index: 0, questions: [] };

  bot.sendMessage(chatId, 'Choose your level:', {
    reply_markup: {
      keyboard: [['Beginner'], ['Intermediate'], ['Advanced']],
      one_time_keyboard: true,
      resize_keyboard: true
    }
  });
});

bot.on('message', msg => {
  const chatId = msg.chat.id;
  const text = msg.text;
  const user = users[chatId];

  if (!user) return;
  const levels = ['Beginner', 'Intermediate', 'Advanced'];

  // выбор уровня
  if (levels.includes(text)) {
    const level = text.toLowerCase();
    db.all('SELECT * FROM questions WHERE level = ?', [level], (err, rows) => {
      if (err || rows.length === 0) return bot.sendMessage(chatId, 'No questions found!');
      user.questions = rows;
      user.index = 0;
      user.score = 0;
      sendQuestion(chatId);
    });
    return;
  }

  // обработка ответа
  const current = user.questions[user.index];
  if (current) {
    const answerIndex = [current.option1, current.option2, current.option3, current.option4].indexOf(text);
    if (answerIndex + 1 === current.correct) user.score++;
    user.index++;

    if (user.index < user.questions.length) {
      sendQuestion(chatId);
    } else {
      bot.sendMessage(chatId, `✅ Quiz finished! Your score: ${user.score}/${user.questions.length}`);
      delete users[chatId];
    }
  }
});

function sendQuestion(chatId) {
  const user = users[chatId];
  const q = user.questions[user.index];
  bot.sendMessage(chatId, q.question, {
    reply_markup: {
      keyboard: [[q.option1, q.option2], [q.option3, q.option4]],
      one_time_keyboard: true,
      resize_keyboard: true
    }
  });
}

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
