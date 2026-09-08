-- +goose Up
CREATE TABLE companies_list_sectors (
    id          UUID PRIMARY KEY,
    company_id  UUID REFERENCES companies (id),
    sector_id   UUID REFERENCES list_sectors (id),
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP NOT NULL
    );

-- +goose Down
DROP TABLE companies_list_sectors;