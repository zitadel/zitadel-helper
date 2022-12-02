BEGIN;

INSERT INTO auth.idp_configs2
SELECT *
FROM auth.idp_configs
ON CONFLICT DO NOTHING;

INSERT INTO auth.idp_providers2
SELECT *
FROM auth.idp_providers
ON CONFLICT DO NOTHING;

INSERT INTO auth.org_project_mapping2
SELECT *
FROM auth.org_project_mapping
ON CONFLICT DO NOTHING;

INSERT INTO auth.user_external_idps2
SELECT *
FROM auth.user_external_idps
ON CONFLICT DO NOTHING;

INSERT INTO auth.users2
SELECT *
FROM auth.users
ON CONFLICT DO NOTHING;

COMMIT;