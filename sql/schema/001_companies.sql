-- +goose Up
CREATE TABLE companies (
    id          UUID PRIMARY KEY,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP NOT NULL,
    notes       TEXT,
    commutetime INT,
    commutenotes TEXT
);

-- +goose Down
DROP TABLE companies;