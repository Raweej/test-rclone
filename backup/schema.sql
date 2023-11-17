-- Create the users table
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    age INTEGER
);

-- Insert mock data
INSERT INTO users (name, email, age) VALUES
    ('John Doe', 'john@example.com', 25),
    ('Jane Smith', 'jane@example.com', 30),
    ('Bob Johnson', 'bob@example.com', 22);
