INSERT INTO projections.actions3
SELECT *
FROM projections.actions2
ON CONFLICT DO NOTHING;
INSERT INTO projections.apps4
SELECT *
FROM projections.apps3
ON CONFLICT DO NOTHING;
INSERT INTO projections.apps4_api_configs
SELECT *
FROM projections.apps3_api_configs
ON CONFLICT DO NOTHING;
INSERT INTO projections.apps4_oidc_configs
SELECT *
FROM projections.apps3_oidc_configs
ON CONFLICT DO NOTHING;
INSERT INTO projections.apps4_saml_configs
SELECT *
FROM projections.apps3_saml_configs
ON CONFLICT DO NOTHING;

INSERT INTO projections.authn_keys2
SELECT id,
       creation_date,
       creation_date as change_date,
       resource_owner,
       instance_id,
       aggregate_id,
       sequence,
       object_id,
       expiration,
       identifier,
       public_key,
       enabled,
       type,
       false
FROM projections.authn_keys
ON CONFLICT DO NOTHING;

INSERT INTO projections.custom_texts2
SELECT *
FROM projections.custom_texts
ON CONFLICT DO NOTHING;
INSERT INTO projections.domain_policies2
SELECT *
FROM projections.domain_policies
ON CONFLICT DO NOTHING;
INSERT INTO projections.flow_triggers2
SELECT *
FROM projections.flows_triggers
ON CONFLICT DO NOTHING;
INSERT INTO projections.idp_login_policy_links4
SELECT *
FROM projections.idp_login_policy_links3
ON CONFLICT DO NOTHING;
INSERT INTO projections.idp_user_links3
SELECT *
FROM projections.idp_user_links2
ON CONFLICT DO NOTHING;
INSERT INTO projections.idps3
SELECT *
FROM projections.idps2
ON CONFLICT DO NOTHING;
INSERT INTO projections.idps3_jwt_config
SELECT *
FROM projections.idps2_jwt_config
ON CONFLICT DO NOTHING;
INSERT INTO projections.idps3_oidc_config
SELECT *
FROM projections.idps2_oidc_config
ON CONFLICT DO NOTHING;
INSERT INTO projections.label_policies2
SELECT *
FROM projections.label_policies
ON CONFLICT DO NOTHING;
INSERT INTO projections.lockout_policies2
SELECT *
FROM projections.lockout_policies
ON CONFLICT DO NOTHING;
INSERT INTO projections.login_names2_domains
SELECT *
FROM projections.login_names_domains
ON CONFLICT DO NOTHING;
INSERT INTO projections.login_names2_policies
SELECT *
FROM projections.login_names_policies
ON CONFLICT DO NOTHING;
INSERT INTO projections.login_names2_users
SELECT *
FROM projections.login_names_users
ON CONFLICT DO NOTHING;
INSERT INTO projections.login_policies4
SELECT *
FROM projections.login_policies3
ON CONFLICT DO NOTHING;
INSERT INTO projections.mail_templates2
SELECT *
FROM projections.mail_templates
ON CONFLICT DO NOTHING;
INSERT INTO projections.message_texts2
SELECT *
FROM projections.message_texts
ON CONFLICT DO NOTHING;
INSERT INTO projections.org_domains2
SELECT *
FROM projections.org_domains
ON CONFLICT DO NOTHING;
INSERT INTO projections.org_metadata2
SELECT *
FROM projections.org_metadata
ON CONFLICT DO NOTHING;
INSERT INTO projections.password_age_policies2
SELECT *
FROM projections.password_age_policies
ON CONFLICT DO NOTHING;
INSERT INTO projections.password_complexity_policies2
SELECT *
FROM projections.password_complexity_policies
ON CONFLICT DO NOTHING;
INSERT INTO projections.personal_access_tokens3
SELECT *
FROM projections.personal_access_tokens2
ON CONFLICT DO NOTHING;
INSERT INTO projections.privacy_policies2
SELECT *
FROM projections.privacy_policies
ON CONFLICT DO NOTHING;
INSERT INTO projections.project_roles3
SELECT *
FROM projections.project_roles
ON CONFLICT DO NOTHING;
INSERT INTO projections.projects3
SELECT *
FROM projections.projects2
ON CONFLICT DO NOTHING;
INSERT INTO projections.user_auth_methods4
SELECT *
FROM projections.user_auth_methods3
ON CONFLICT DO NOTHING;
INSERT INTO projections.user_metadata4
SELECT *
FROM projections.user_metadata3
ON CONFLICT DO NOTHING;
INSERT INTO projections.users6
SELECT *
FROM projections.users5
ON CONFLICT DO NOTHING;
INSERT INTO projections.users6_humans
SELECT *
FROM projections.users5_humans
ON CONFLICT DO NOTHING;
INSERT INTO projections.users6_machines
SELECT *
FROM projections.users5_machines
ON CONFLICT DO NOTHING;
INSERT INTO projections.users6_notifications
SELECT *
FROM projections.users5_notifications
ON CONFLICT DO NOTHING;

INSERT INTO projections.project_grants3
SELECT *
FROM projections.project_grants2
ON CONFLICT DO NOTHING;

INSERT INTO projections.instance_members3
SELECT members.creation_date,
       members.change_date,
       members.user_id,
       users.user_resource_owner,
       false,
       members.roles,
       members.sequence,
       members.resource_owner,
       members.instance_id,
       false,
       members.id
FROM projections.instance_members2 as members
         LEFT JOIN (SELECT id, instance_id, resource_owner as user_resource_owner FROM projections.users6) as users
                   ON users.id = members.user_id AND users.instance_id = members.instance_id
ON CONFLICT DO NOTHING;

INSERT INTO projections.org_members3
SELECT members.creation_date,
       members.change_date,
       members.user_id,
       users.user_resource_owner,
       false,
       members.roles,
       members.sequence,
       members.resource_owner,
       members.instance_id,
       false,
       members.org_id
FROM projections.org_members2 as members
         LEFT JOIN (SELECT id, instance_id, resource_owner as user_resource_owner FROM projections.users6) as users
                   ON users.id = members.user_id AND users.instance_id = members.instance_id
ON CONFLICT DO NOTHING;

INSERT INTO projections.project_members3
SELECT members.creation_date,
       members.change_date,
       members.user_id,
       users.user_resource_owner,
       false,
       members.roles,
       members.sequence,
       members.resource_owner,
       members.instance_id,
       false,
       members.project_id
FROM projections.project_members2 as members
         LEFT JOIN (SELECT id, instance_id, resource_owner as user_resource_owner FROM projections.users6) as users
                   ON users.id = members.user_id AND users.instance_id = members.instance_id
ON CONFLICT DO NOTHING;


INSERT INTO projections.project_grant_members3
SELECT members.creation_date,
       members.change_date,
       members.user_id,
       users.user_resource_owner,
       false,
       members.roles,
       members.sequence,
       members.resource_owner,
       members.instance_id,
       false,
       members.project_id,
       members.grant_id,
       project_grants.granted_org,
       false
FROM projections.project_grant_members2 as members
         LEFT JOIN (SELECT id, instance_id, resource_owner as user_resource_owner FROM projections.users6) as users
                   ON users.id = members.user_id AND users.instance_id = members.instance_id
         LEFT JOIN (SELECT grant_id, instance_id, granted_org_id as granted_org
                    FROM projections.project_grants3) as project_grants
                   ON project_grants.grant_id = members.grant_id AND project_grants.instance_id = members.instance_id
ON CONFLICT DO NOTHING;

INSERT INTO projections.user_grants3
SELECT user_grants.id,
       user_grants.creation_date,
       user_grants.change_date,
       user_grants.sequence,
       user_grants.state,
       user_grants.resource_owner,
       user_grants.instance_id,
       user_grants.user_id,
       IFNULL(users.resource_owner_user, ''),
       false,
       user_grants.project_id,
       IFNULL(projects.resource_owner_project, ''),
       false,
       user_grants.grant_id,
       IFNULL(project_grants.granted_org, ''),
       false,
       user_grants.roles,
       false
FROM projections.user_grants2 as user_grants
         LEFT JOIN (SELECT id, instance_id, resource_owner as resource_owner_user FROM projections.users6) as users
                   ON users.id = user_grants.user_id AND users.instance_id = user_grants.instance_id
         LEFT JOIN (SELECT id, instance_id, resource_owner as resource_owner_project
                    FROM projections.projects3) as projects
                   ON projects.id = user_grants.project_id AND projects.instance_id = user_grants.instance_id
         LEFT JOIN (SELECT grant_id, instance_id, granted_org_id as granted_org
                    FROM projections.project_grants3) as project_grants
                   ON project_grants.grant_id = user_grants.grant_id AND
                      project_grants.instance_id = user_grants.instance_id
ON CONFLICT DO NOTHING;
