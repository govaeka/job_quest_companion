-- name: CreateAd :one
INSERT INTO ads (id, created_at, updated_at, title, adtext, notes, company_id, min_exp, german, english, apply_by, time_of_appl, archived)
VALUES (
    gen_random_uuid(),
    NOW(),
    NOW(),
    $1,
    $2,
    $3,
    $4,
    $5,
    $6,
    $7,
    $8,
    $9,
    $10
)
RETURNING *;

-- name: GetAd :one
SELECT * FROM ads
WHERE id = $1;

-- name: GetAds :many
SELECT * FROM ads;

-- name: UpdateAd :one
UPDATE ads
SET updated_at = NOW(), title = $2, adtext = $3, notes = $4, company_id = $5, min_exp = $6, german = $7, english = $8, apply_by = $9, time_of_appl = $10, archived = $11
WHERE id = $1
RETURNING *;

-- name: DeleteAd :one
DELETE FROM ads
WHERE id = $1
RETURNING *;