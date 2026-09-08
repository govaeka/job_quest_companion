-- +goose Up
CREATE TABLE ads_list_tools (
    id          UUID PRIMARY KEY,
    ad_id       UUID REFERENCES ads (id),
    tool_id     UUID REFERENCES list_tools (id),
    required    BOOLEAN,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP NOT NULL
    );

-- +goose Down
DROP TABLE ads_list_tools;