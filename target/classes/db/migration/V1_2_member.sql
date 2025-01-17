CREATE TABLE IF NOT EXISTS member (
                                       id BIGSERIAL PRIMARY KEY,
                                       firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(255),
    contact VARCHAR(20)
    );

CREATE TABLE IF NOT EXISTS member_books (
                                            member_id BIGINT NOT NULL,
                                            book_id BIGINT NOT NULL,
                                            PRIMARY KEY (member_id, book_id),
    FOREIGN KEY (member_id) REFERENCES members (id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES book (id) ON DELETE CASCADE
    );
