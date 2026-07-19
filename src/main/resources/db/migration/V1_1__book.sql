CREATE TABLE IF NOT EXISTS book (
                      id BIGSERIAL PRIMARY KEY,
                      title VARCHAR(255) NOT NULL,
                      author VARCHAR(255),
                      isbn VARCHAR(20),
                      publication_date DATE
);
