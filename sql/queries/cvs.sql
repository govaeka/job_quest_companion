-- name: CreateCv :one
INSERT INTO cvs (id, created_at, updated_at, language, name, notes)
VALUES (
    gen_random_uuid(),
    NOW(),
    NOW(),
    $1,
    $2,
    $3
)
RETURNING *;

-- name: GetCv :one
SELECT * FROM cvs
WHERE id = $1;

-- name: GetCvs :many
SELECT * FROM cvs;

-- name: UpdateCv :one
UPDATE cvs
SET updated_at = NOW(), language = $2, name = $3, notes = $4
WHERE id = $1
RETURNING *;

-- name: DeleteCv :one
DELETE FROM cvs
WHERE id = $1
RETURNING *;