DROP TABLE IF EXISTS member_books;

CREATE TABLE IF NOT EXISTS borrowing (
    id            BIGSERIAL PRIMARY KEY,

    member_id     BIGINT NOT NULL,
    book_id       BIGINT NOT NULL,

    borrowed_date DATE   NOT NULL,
    due_date      DATE   NOT NULL,
    returned      DATE,

    CONSTRAINT fk_borrowing_member
        FOREIGN KEY (member_id)
            REFERENCES member(id) ,

    CONSTRAINT fk_borrowing_book
        FOREIGN KEY (book_id)
        REFERENCES book(id)
);

