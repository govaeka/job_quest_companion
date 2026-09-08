-- +goose Up
CREATE TABLE ads_list_sources (
    id          UUID PRIMARY KEY,
    ad_id       UUID REFERENCES ads (id),
    source_id   UUID REFERENCES list_sources (id),
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP NOT NULL
    );

-- +goose Down
DROP TABLE ads_list_sources;