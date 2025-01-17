INSERT INTO members (firstname, lastname, age, email, contact)
VALUES ('John', 'Doe', 30, 'john.doe@example.com', '123-456-7890');

INSERT INTO members (firstname, lastname, age, email, contact)
VALUES ('Jane', 'Smith', 25, 'jane.smith@example.com', '098-765-4321');

-- Link members to books
INSERT INTO member_books (member_id, book_id) VALUES (1, 1);
INSERT INTO member_books (member_id, book_id) VALUES (2, 2);
