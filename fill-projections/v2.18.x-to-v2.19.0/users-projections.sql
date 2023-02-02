BEGIN;

INSERT INTO projections.users7
SELECT *
FROM projections.users6
    ON CONFLICT DO NOTHING;
INSERT INTO projections.users7_humans
SELECT *
FROM projections.users6_humans
    ON CONFLICT DO NOTHING;
INSERT INTO projections.users7_machines
SELECT *
FROM projections.users6_machines
    ON CONFLICT DO NOTHING;
INSERT INTO projections.users7_notifications
SELECT *
FROM projections.users6_notifications
    ON CONFLICT DO NOTHING;


INSERT INTO projections.current_sequences
SELECT 'projections.users7', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.users6';

COMMIT;
