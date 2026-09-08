-- +goose Up
CREATE TABLE events (
    id          UUID PRIMARY KEY,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP NOT NULL,
    occured_at  TIMESTAMP,
    notes       TEXT,
    letter_text TEXT,

    company_id  UUID REFERENCES companies (id), 
    ad_id       UUID REFERENCES ads (id), 
    cv_id       UUID REFERENCES cvs (id)
    );

-- +goose Down
DROP TABLE events;