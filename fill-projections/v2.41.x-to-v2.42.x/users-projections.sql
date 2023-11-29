BEGIN;

INSERT INTO projections.projects4
SELECT id, creation_date, change_date, sequence, state, resource_owner, instance_id, name, project_role_assertion, project_role_check, has_project_check, private_labeling_setting
FROM projections.projects3
WHERE owner_removed = false
    ON CONFLICT DO NOTHING;

INSERT INTO projections.instance_members4
SELECT creation_date, change_date, user_id, user_resource_owner, roles, sequence, resource_owner, instance_id, id
FROM projections.instance_members3
WHERE owner_removed = false
ON CONFLICT DO NOTHING;

INSERT INTO projections.org_members4
SELECT creation_date, change_date, user_id, user_resource_owner, roles, sequence, resource_owner, instance_id, org_id
FROM projections.org_members3
WHERE owner_removed = false
ON CONFLICT DO NOTHING;

INSERT INTO projections.project_grant_members4
SELECT creation_date, change_date, user_id, user_resource_owner, roles, sequence, resource_owner, instance_id, project_id, grant_id, granted_org
FROM projections.project_grant_members3
WHERE owner_removed = false
ON CONFLICT DO NOTHING;

INSERT INTO projections.project_grants4
SELECT grant_id, creation_date, change_date, sequence, state, resource_owner, instance_id, project_id, granted_org_id, granted_role_keys
FROM projections.project_grants3
WHERE owner_removed = false
ON CONFLICT DO NOTHING;

INSERT INTO projections.project_members4
SELECT creation_date, change_date, user_id, user_resource_owner, roles, sequence, resource_owner, instance_id, project_id
FROM projections.project_members3
WHERE owner_removed = false
ON CONFLICT DO NOTHING;

INSERT INTO projections.project_roles4
SELECT project_id, role_key, creation_date, change_date, sequence, resource_owner, instance_id, display_name, group_name
FROM projections.project_roles3
WHERE owner_removed = false
ON CONFLICT DO NOTHING;

INSERT INTO projections.instance_members4
SELECT creation_date, change_date, user_id, user_resource_owner, roles, sequence, resource_owner, instance_id, id
FROM projections.instance_members3
WHERE owner_removed = false
ON CONFLICT DO NOTHING;

INSERT INTO projections.apps6
SELECT id, name, project_id, creation_date, change_date, resource_owner, instance_id, state, sequence
FROM projections.apps5
WHERE owner_removed = false
ON CONFLICT DO NOTHING;

INSERT INTO projections.users9
SELECT id, creation_date, change_date, sequence, state, resource_owner, instance_id, username, type
FROM projections.users8
WHERE owner_removed = false
ON CONFLICT DO NOTHING;

INSERT INTO projections.user_metadata5
SELECT user_id, creation_date, change_date, sequence, resource_owner, instance_id, key, value
FROM projections.user_metadata4
WHERE owner_removed = false
ON CONFLICT DO NOTHING;


INSERT INTO projections.current_states
SELECT 'projections.projects4', instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, position
FROM projections.current_states
WHERE projection_name = 'projections.projects3'
ON CONFLICT DO NOTHING;

INSERT INTO projections.current_states
SELECT 'projections.instance_members4', instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, position
FROM projections.current_states
WHERE projection_name = 'projections.instance_members3'
ON CONFLICT DO NOTHING;

INSERT INTO projections.current_states
SELECT 'projections.org_members4', instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, position
FROM projections.current_states
WHERE projection_name = 'projections.org_members3'
ON CONFLICT DO NOTHING;

INSERT INTO projections.current_states
SELECT 'projections.project_grant_members4', instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, position
FROM projections.current_states
WHERE projection_name = 'projections.project_grant_members3'
ON CONFLICT DO NOTHING;

INSERT INTO projections.current_states
SELECT 'projections.project_grants4', instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, position
FROM projections.current_states
WHERE projection_name = 'projections.project_grants3'
ON CONFLICT DO NOTHING;

INSERT INTO projections.current_states
SELECT 'projections.project_members4', instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, position
FROM projections.current_states
WHERE projection_name = 'projections.project_members3'
ON CONFLICT DO NOTHING;

INSERT INTO projections.current_states
SELECT 'projections.project_roles4', instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, position
FROM projections.current_states
WHERE projection_name = 'projections.project_roles3'
ON CONFLICT DO NOTHING;

INSERT INTO projections.current_states
SELECT 'projections.instance_members4', instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, position
FROM projections.current_states
WHERE projection_name = 'projections.instance_members3'
ON CONFLICT DO NOTHING;

INSERT INTO projections.current_states
SELECT 'projections.apps6', instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, position
FROM projections.current_states
WHERE projection_name = 'projections.apps5'
ON CONFLICT DO NOTHING;

INSERT INTO projections.current_states
SELECT 'projections.users9', instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, position
FROM projections.current_states
WHERE projection_name = 'projections.users8'
ON CONFLICT DO NOTHING;

INSERT INTO projections.current_states
SELECT 'projections.user_metadata5', instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, position
FROM projections.current_states
WHERE projection_name = 'projections.user_metadata4'
ON CONFLICT DO NOTHING;

COMMIT;
