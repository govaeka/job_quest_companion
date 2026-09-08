-- +goose Up
CREATE TABLE events_list_channels (
    id          UUID PRIMARY KEY,
    event_id    UUID REFERENCES events (id),
    channel_id  UUID REFERENCES list_channels (id),
    required    BOOLEAN,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP NOT NULL
    );

-- +goose Down
DROP TABLE events_list_channels;