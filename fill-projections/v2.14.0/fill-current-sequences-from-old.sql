INSERT INTO adminapi.current_sequences
SELECT 'adminapi.styling2', current_sequence, event_timestamp, last_successful_spooler_run, instance_id
FROM adminapi.current_sequences as sequences
WHERE view_name = 'adminapi.styling';



INSERT INTO auth.current_sequences
SELECT 'auth.users2', current_sequence, event_timestamp, last_successful_spooler_run, instance_id
FROM auth.current_sequences as sequences
WHERE view_name = 'auth.users';

INSERT INTO auth.current_sequences
SELECT 'auth.idp_configs2', current_sequence, event_timestamp, last_successful_spooler_run, instance_id
FROM auth.current_sequences as sequences
WHERE view_name = 'auth.idp_configs';

INSERT INTO auth.current_sequences
SELECT 'auth.idp_providers2', current_sequence, event_timestamp, last_successful_spooler_run, instance_id
FROM auth.current_sequences as sequences
WHERE view_name = 'auth.idp_providers';

INSERT INTO auth.current_sequences
SELECT 'auth.org_project_mapping2', current_sequence, event_timestamp, last_successful_spooler_run, instance_id
FROM auth.current_sequences as sequences
WHERE view_name = 'auth.org_project_mapping';

INSERT INTO auth.current_sequences
SELECT 'auth.user_external_idps2', current_sequence, event_timestamp, last_successful_spooler_run, instance_id
FROM auth.current_sequences as sequences
WHERE view_name = 'auth.user_external_idps';



INSERT INTO projections.current_sequences
SELECT 'projections.actions3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.actions2';

INSERT INTO projections.current_sequences
SELECT 'projections.apps4', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.apps3';

INSERT INTO projections.current_sequences
SELECT 'projections.apps4_api_configs', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.apps3_api_configs';

INSERT INTO projections.current_sequences
SELECT 'projections.apps4_oidc_configs', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.apps3_oidc_configs';

INSERT INTO projections.current_sequences
SELECT 'projections.apps4_saml_configs', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.apps3_saml_configs';

INSERT INTO projections.current_sequences
SELECT 'projections.authn_keys2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.authn_keys';

INSERT INTO projections.current_sequences
SELECT 'projections.custom_texts2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.custom_texts';

INSERT INTO projections.current_sequences
SELECT 'projections.domain_policies2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.domain_policies';

INSERT INTO projections.current_sequences
SELECT 'projections.flow_triggers2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.flows_triggers';

INSERT INTO projections.current_sequences
SELECT 'projections.idp_login_policy_links4', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.idp_login_policy_links3';

INSERT INTO projections.current_sequences
SELECT 'projections.idp_user_links3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.idp_user_links2';

INSERT INTO projections.current_sequences
SELECT 'projections.idps3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.idps2';

INSERT INTO projections.current_sequences
SELECT 'projections.idps3_jwt_config', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.idps2_jwt_config';

INSERT INTO projections.current_sequences
SELECT 'projections.idps3_oidc_config', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.idps2_oidc_config';

INSERT INTO projections.current_sequences
SELECT 'projections.instance_members3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.instance_members2';

INSERT INTO projections.current_sequences
SELECT 'projections.label_policies2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.label_policies';

INSERT INTO projections.current_sequences
SELECT 'projections.lockout_policies2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.lockout_policies';

INSERT INTO projections.current_sequences
SELECT 'projections.login_names2_domains', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.login_names_domains';

INSERT INTO projections.current_sequences
SELECT 'projections.login_names2_policies', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.login_names_policies';

INSERT INTO projections.current_sequences
SELECT 'projections.login_names2_users', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.login_names_users';

INSERT INTO projections.current_sequences
SELECT 'projections.login_policies4', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.login_policies3';

INSERT INTO projections.current_sequences
SELECT 'projections.mail_templates2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.mail_templates';

INSERT INTO projections.current_sequences
SELECT 'projections.message_texts2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.message_texts';

INSERT INTO projections.current_sequences
SELECT 'projections.org_domains2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.org_domains';

INSERT INTO projections.current_sequences
SELECT 'projections.org_members3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.org_members2';

INSERT INTO projections.current_sequences
SELECT 'projections.org_metadata2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.org_metadata';

INSERT INTO projections.current_sequences
SELECT 'projections.password_age_policies2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.password_age_policies';

INSERT INTO projections.current_sequences
SELECT 'projections.password_complexity_policies2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.password_complexity_policies';

INSERT INTO projections.current_sequences
SELECT 'projections.personal_access_tokens3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.personal_access_tokens2';

INSERT INTO projections.current_sequences
SELECT 'projections.privacy_policies2', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.privacy_policies';

INSERT INTO projections.current_sequences
SELECT 'projections.project_grant_members3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.project_grant_members2';

INSERT INTO projections.current_sequences
SELECT 'projections.project_grants3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.project_grants2';

INSERT INTO projections.current_sequences
SELECT 'projections.project_members3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.project_members2';

INSERT INTO projections.current_sequences
SELECT 'projections.project_roles3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.project_roles';

INSERT INTO projections.current_sequences
SELECT 'projections.projects3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.projects2';

INSERT INTO projections.current_sequences
SELECT 'projections.user_auth_methods4', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.user_auth_methods3';

INSERT INTO projections.current_sequences
SELECT 'projections.user_grants3', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.user_grants2';

INSERT INTO projections.current_sequences
SELECT 'projections.user_metadata4', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.user_metadata3';

INSERT INTO projections.current_sequences
SELECT 'projections.users6', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.users5';

INSERT INTO projections.current_sequences
SELECT 'projections.users6_humans', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.users5_humans';

INSERT INTO projections.current_sequences
SELECT 'projections.users6_machines', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.users5_machines';

INSERT INTO projections.current_sequences
SELECT 'projections.users6_notifications', aggregate_type, current_sequence, instance_id, timestamp
FROM projections.current_sequences as sequences
WHERE projection_name = 'projections.users5_notifications';
