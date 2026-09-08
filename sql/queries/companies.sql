-- name: CreateCompany :one
INSERT INTO companies (id, created_at, updated_at, notes, commutetime, commutenotes)
VALUES (
    gen_random_uuid(),
    NOW(),
    NOW(),
    $1,
    $2,
    $3
)
RETURNING *;

-- name: GetCompany :one
SELECT * FROM companies
WHERE id = $1;

-- name: GetCompanies :many
SELECT * FROM companies;

-- name: UpdateCompany :one
UPDATE companies
SET updated_at = NOW(), notes = $2, commutetime = $3, commutenotes = $4
WHERE id = $1
RETURNING *;

-- name: DeleteCompany :one
DELETE FROM companies
WHERE id = $1
RETURNING *;
