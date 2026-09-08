-- +goose Up
CREATE TABLE cvs (
    id          UUID PRIMARY KEY,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP NOT NULL,
    language    BOOLEAN,
    name        TEXT,
    notes       TEXT
    );

-- +goose Down
DROP TABLE cvs;