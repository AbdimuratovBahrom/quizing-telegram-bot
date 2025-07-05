const sqlite3 = require('sqlite3').verbose();
const db = new sqlite3.Database('./quiz.db');

db.serialize(() => {
  const fs = require('fs');
  const sql = fs.readFileSync('./questions.sql', 'utf8');
  db.exec(sql);
});

module.exports = db;
