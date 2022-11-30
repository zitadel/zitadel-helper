INSERT INTO adminapi.styling2
SELECT *
FROM adminapi.styling
ON CONFLICT DO NOTHING;