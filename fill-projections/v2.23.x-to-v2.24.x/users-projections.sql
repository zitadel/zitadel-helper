BEGIN;

INSERT INTO projections.apps5
SELECT *
FROM projections.apps4
    ON CONFLICT DO NOTHING;
INSERT INTO projections.apps5_api_configs
SELECT *
FROM projections.apps4_api_configs
    ON CONFLICT DO NOTHING;
INSERT INTO projections.apps5_oidc_configs
SELECT *
FROM projections.apps4_oidc_configs
    ON CONFLICT DO NOTHING;
INSERT INTO projections.apps5_saml_configs
SELECT *
FROM projections.apps4_saml_configs
    ON CONFLICT DO NOTHING;

INSERT INTO projections.current_sequences
SELECT 'projections.apps5', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.apps4';

COMMIT;
