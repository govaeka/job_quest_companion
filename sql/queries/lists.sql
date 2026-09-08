-- name: CreateSector :one
INSERT INTO list_sectors (id, name, created_at, updated_at)
VALUES (
    gen_random_uuid(),
    $1,
    NOW(),
    NOW()
)
RETURNING *;

-- name: GetSectors :one
SELECT * FROM list_sectors;

-- name: DeleteSector :one
DELETE FROM list_sectors
WHERE id = $1
RETURNING *;

-- name: CreateTool :one
INSERT INTO list_tools (id, name, created_at, updated_at)
VALUES (
    gen_random_uuid(),
    $1,
    NOW(),
    NOW()
)
RETURNING *;

-- name: GetTools :one
SELECT * FROM list_tools;

-- name: DeleteTool :one
DELETE FROM list_tools
WHERE id = $1
RETURNING *;

-- name: CreateSource :one
INSERT INTO list_sources (id, name, created_at, updated_at)
VALUES (
    gen_random_uuid(),
    $1,
    NOW(),
    NOW()
)
RETURNING *;

-- name: GetSources :one
SELECT * FROM list_sources;

-- name: DeleteSource :one
DELETE FROM list_sources
WHERE id = $1
RETURNING *;

-- name: CreateChannel :one
INSERT INTO list_channels (id, name, created_at, updated_at)
VALUES (
    gen_random_uuid(),
    $1,
    NOW(),
    NOW()
)
RETURNING *;

-- name: GetChannels :one
SELECT * FROM list_channels;

-- name: DeleteChannel :one
DELETE FROM list_channels
WHERE id = $1
RETURNING *;