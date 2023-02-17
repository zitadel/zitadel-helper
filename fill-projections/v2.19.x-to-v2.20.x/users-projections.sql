BEGIN;

INSERT INTO projections.users8
SELECT *
FROM projections.users7
    ON CONFLICT DO NOTHING;
INSERT INTO projections.users8_humans
SELECT *
FROM projections.users7_humans
    ON CONFLICT DO NOTHING;
INSERT INTO projections.users8_machines
SELECT *
FROM projections.users7_machines
    ON CONFLICT DO NOTHING;
INSERT INTO projections.users8_notifications
SELECT *
FROM projections.users7_notifications
    ON CONFLICT DO NOTHING;


INSERT INTO projections.current_sequences
SELECT 'projections.users8', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.users7';

COMMIT;
