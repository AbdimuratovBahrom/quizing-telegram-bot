CREATE TABLE IF NOT EXISTS questions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  question TEXT NOT NULL,
  option1 TEXT,
  option2 TEXT,
  option3 TEXT,
  option4 TEXT,
  correct INTEGER,
  level TEXT -- 'beginner', 'intermediate', 'advanced'
);

INSERT INTO questions (question, option1, option2, option3, option4, correct, level) VALUES
('What is the plural of "mouse"?', 'Mouses', 'Mices', 'Mice', 'Mousen', 3, 'beginner'),
('Choose the correct past tense of "go":', 'Go', 'Went', 'Gone', 'Goed', 2, 'beginner'),
('She _____ to school every day.', 'go', 'goes', 'gone', 'going', 2, 'beginner'),

('The book, as well as the pen, _____ on the table.', 'is', 'are', 'were', 'be', 1, 'intermediate'),
('Neither John nor his friends _____ here.', 'is', 'are', 'was', 'has', 2, 'intermediate'),

('If I _____ earlier, I would have caught the train.', 'left', 'leave', 'had left', 'have left', 3, 'advanced'),
('Hardly had she finished speaking when he _____.', 'arrived', 'had arrived', 'arrives', 'was arriving', 1, 'advanced');
