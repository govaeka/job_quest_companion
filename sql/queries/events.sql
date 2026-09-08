-- name: CreateEvent :one
INSERT INTO events (id, created_at, updated_at, occured_at, notes, letter_text, company_id, ad_id, cv_id)
VALUES (
    gen_random_uuid(),
    NOW(),
    NOW(),
    $1,
    $2,
    $3,
    $4,
    $5,
    $6
)
RETURNING *;

-- name: GetEvent :one
SELECT * FROM events
WHERE id = $1;

-- name: GetEvents :many
SELECT * FROM events;

-- name: UpdateEvent :one
UPDATE events
SET updated_at = NOW(), occured_at = $2, notes = $3, letter_text = $4, company_id = $5, ad_id = $6, cv_id = $7
WHERE id = $1
RETURNING *;

-- name: DeleteEvent :one
DELETE FROM events
WHERE id = $1
RETURNING *;