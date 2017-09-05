CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INTEGER DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);



INSERT INTO todos
(title, details, priority, created_at, completed_at)
VALUES
('review SQL', 'Use SQL Course PDF for review', '1', current_timestamp, current_timestamp),
('complete snippets weekly', 'go back to do weekly from last week', '2', current_timestamp, NULL),
('refactor word game', 'go back to add requirements', '3', current_timestamp, NULL),
('refactor user directory', 'go back to add authentication and update', '4', current_timestamp, NULL),
('review forms and MongoDB', 'review that material from the beginning of BackEnd', '5', current_timestamp, NULL);

SELECT * FROM todos;

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos where priority > 1;

UPDATE todos SET completed_at = current_timestamp WHERE priority = 4;

select * from todos;

DELETE FROM todos WHERE completed_at IS NOT NULL;
