-- +goose Up
CREATE TABLE ads (
    id          UUID PRIMARY KEY,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP NOT NULL,
    title       TEXT,
    adtext      TEXT,
    notes       TEXT,
    company_id  UUID REFERENCES companies (id),
    min_exp     INT,
    german      BOOLEAN,
    english     BOOLEAN,
    apply_by    TIMESTAMP,
    time_of_appl  TIMESTAMP,
    archived    BOOLEAN
);

-- +goose Down
DROP TABLE ads;