DROP TABLE IF EXISTS questions;

CREATE TABLE IF NOT EXISTS questions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  question TEXT NOT NULL,
  option1 TEXT,
  option2 TEXT,
  option3 TEXT,
  option4 TEXT,
  correct INTEGER,
  level TEXT NOT NULL
);

-- Beginner (20 questions)
INSERT INTO questions (question, option1, option2, option3, option4, correct, level) VALUES
('What is the plural of "mouse"?', 'Mouses', 'Mices', 'Mouse', 'Mice', 4, 'beginner'),
('She ____ to school every day.', 'go', 'goes', 'gone', 'going', 2, 'beginner'),
('Choose the correct past tense of "go".', 'goed', 'goes', 'went', 'going', 3, 'beginner'),
('How do you say "привет" in English?', 'Hello', 'Bye', 'Please', 'Thanks', 1, 'beginner'),
('Which one is a fruit?', 'Carrot', 'Potato', 'Apple', 'Onion', 3, 'beginner'),
('What is the opposite of "hot"?', 'Warm', 'Boiling', 'Cold', 'Cool', 3, 'beginner'),
('What color is the sun?', 'Red', 'Yellow', 'Green', 'Blue', 2, 'beginner'),
('How many days are in a week?', '5', '6', '7', '8', 3, 'beginner'),
('Which animal barks?', 'Cat', 'Dog', 'Cow', 'Sheep', 2, 'beginner'),
('What is the first letter of the alphabet?', 'B', 'A', 'Z', 'C', 2, 'beginner'),
('Choose the correct article: ___ apple.', 'A', 'An', 'The', '-', 2, 'beginner'),
('What is 2 + 2?', '3', '4', '5', '6', 2, 'beginner'),
('Which one is a color?', 'Table', 'Run', 'Blue', 'Jump', 3, 'beginner'),
('Where does the sun rise?', 'North', 'South', 'East', 'West', 3, 'beginner'),
('Which of these is a verb?', 'Quick', 'Fast', 'Run', 'Blue', 3, 'beginner'),
('What is the opposite of "big"?', 'Huge', 'Large', 'Tiny', 'Tall', 3, 'beginner'),
('What time is it after 11?', '12', '10', '9', '8', 1, 'beginner'),
('Which one is a drink?', 'Bread', 'Juice', 'Rice', 'Soup', 2, 'beginner'),
('How do you spell "cat"?', 'kat', 'cut', 'cat', 'cot', 3, 'beginner'),
('What do you wear on your feet?', 'Hat', 'Gloves', 'Socks', 'Belt', 3, 'beginner');

-- Intermediate (20 questions)
INSERT INTO questions (question, option1, option2, option3, option4, correct, level) VALUES
('What is the synonym of "happy"?', 'Sad', 'Angry', 'Joyful', 'Tired', 3, 'intermediate'),
('Choose the correct sentence.', 'He go to school.', 'He goes to school.', 'He going school.', 'He to go school.', 2, 'intermediate'),
('What is the past tense of "run"?', 'Runned', 'Ran', 'Running', 'Run', 2, 'intermediate'),
('Which one is an adverb?', 'Quick', 'Quickly', 'Quickness', 'Quicker', 2, 'intermediate'),
('Choose the correct word: He is _____ engineer.', 'a', 'an', 'the', '-', 2, 'intermediate'),
('Complete the phrase: as cool as a _____.', 'carrot', 'cucumber', 'potato', 'onion', 2, 'intermediate'),
('What is the plural of "child"?', 'Childs', 'Children', 'Childes', 'Childer', 2, 'intermediate'),
('Which is correct?', 'She can sings.', 'She can sing.', 'She can singing.', 'She cans sing.', 2, 'intermediate'),
('Choose the correct sentence.', 'I am play.', 'I playing.', 'I am playing.', 'I play am.', 3, 'intermediate'),
('Which one is a question?', 'He is tall.', 'Are you okay?', 'She was there.', 'They are gone.', 2, 'intermediate'),
('Choose the correct phrasal verb: "give ____"', 'out', 'in', 'up', 'over', 3, 'intermediate'),
('Choose the correct answer: I _____ dinner at 7 p.m.', 'have', 'has', 'had', 'having', 1, 'intermediate'),
('Choose the correct sentence.', 'I don’t like coffee.', 'I no like coffee.', 'I doesn’t like coffee.', 'I isn’t like coffee.', 1, 'intermediate'),
('Which word is a noun?', 'Laugh', 'Running', 'Book', 'Quickly', 3, 'intermediate'),
('Choose the correct comparative: "big"', 'biger', 'more big', 'bigger', 'most big', 3, 'intermediate'),
('What does “usually” mean?', 'Always', 'Often', 'Never', 'Rarely', 2, 'intermediate'),
('Choose the correct sentence.', 'She drive fast.', 'She drives fast.', 'She driving fast.', 'She to drive fast.', 2, 'intermediate'),
('What is the superlative form of “good”?', 'Goodest', 'Better', 'Best', 'More good', 3, 'intermediate'),
('Choose the correct tag question: You like it, _____?', 'isn’t it', 'don’t you', 'won’t you', 'do you', 2, 'intermediate'),
('Choose the correct answer: I was born _____ May.', 'in', 'on', 'at', 'by', 1, 'intermediate');

-- Advanced (20 questions)
INSERT INTO questions (question, option1, option2, option3, option4, correct, level) VALUES
('If I _____ earlier, I would have caught the train.', 'left', 'leave', 'had left', 'have left', 3, 'advanced'),
('Hardly had she finished speaking when he _____.', 'arrived', 'had arrived', 'arrives', 'was arriving', 1, 'advanced'),
('What is the meaning of “ubiquitous”?', 'Rare', 'Everywhere', 'Unusual', 'Hidden', 2, 'advanced'),
('Choose the correct conditional sentence.', 'If I will go, I see her.', 'If I went, I will see her.', 'If I go, I will see her.', 'If I going, I will see her.', 3, 'advanced'),
('Identify the passive voice:', 'They built the house.', 'The house was built.', 'They are building the house.', 'They build houses.', 2, 'advanced'),
('Choose the correct usage of a semicolon:', 'I went to town; and bought milk.', 'I went to town; I bought milk.', 'I went to; town.', 'I; went to town.', 2, 'advanced'),
('What is a gerund?', 'Verb in past form', 'Adjective form of noun', 'Verb + ing used as a noun', 'Noun + verb', 3, 'advanced'),
('Choose the correct sentence with subjunctive mood.', 'I wish I was taller.', 'I wish I were taller.', 'I wish I am taller.', 'I wish I be taller.', 2, 'advanced'),
('What is the meaning of “ameliorate”?', 'Worsen', 'Improve', 'Destroy', 'Analyze', 2, 'advanced'),
('Choose the correct sentence:', 'Hardly he had left when it rained.', 'Hardly had he left when it rained.', 'He had hardly left it rained.', 'Hardly he left it rained.', 2, 'advanced'),
('Choose the correct sentence:', 'No sooner I arrived than she left.', 'No sooner did I arrive than she left.', 'I no sooner arrived than she left.', 'No sooner had arrive I than she left.', 2, 'advanced'),
('What does “albeit” mean?', 'Although', 'Because', 'Unless', 'Despite', 1, 'advanced'),
('Choose the correct relative clause:', 'The man which lives there is a doctor.', 'The man who lives there is a doctor.', 'The man where lives there is a doctor.', 'The man what lives there is a doctor.', 2, 'advanced'),
('Which is correct?', 'Despite of the rain, we walked.', 'Although it was raining, we walked.', 'Because of it was raining, we walked.', 'In spite the rain, we walked.', 2, 'advanced'),
('What is the meaning of “ephemeral”?', 'Eternal', 'Temporary', 'Colorful', 'Transparent', 2, 'advanced'),
('Choose the correct sentence with a participial phrase.', 'Running late, she took a taxi.', 'She took a taxi, she running late.', 'She took a taxi running late.', 'Running taxi she late took.', 1, 'advanced'),
('Choose the correct sentence:', 'It is important that he goes.', 'It is important that he go.', 'It is important that he going.', 'It is important that he goes to.', 2, 'advanced'),
('Choose the correct sentence:', 'Each of the students have a book.', 'Each of the students has a book.', 'Each students have books.', 'Every students has a book.', 2, 'advanced'),
('What is “oxymoron”?', 'A statement that contradicts itself', 'A word that sounds like its meaning', 'A comparison using like/as', 'An exaggeration', 1, 'advanced'),
('Choose the correct sentence:', 'He is used to wake up early.', 'He is used to waking up early.', 'He used to waking up early.', 'He use to wake up early.', 2, 'advanced');
