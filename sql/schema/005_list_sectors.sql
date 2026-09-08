-- +goose Up
CREATE TABLE list_sectors (
    id          UUID PRIMARY KEY,
    name        TEXT,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP NOT NULL
    );

-- +goose Down
DROP TABLE list_sectors;