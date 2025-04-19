# config template see /opt/gitlab/etc/gitlab.rb.template

# url
external_url 'https://gitlab.mbo.dev'
nginx['listen_port'] = 80
nginx['listen_https'] = false
nginx['client_max_body_size'] = '512m'

# mail
gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = "localmail"
gitlab_rails['smtp_port'] = 1025
gitlab_rails['smtp_user_name'] = "smtp"
gitlab_rails['smtp_password'] = "pass123"
gitlab_rails['smtp_domain'] = "mbo.dev"
gitlab_rails['smtp_authentication'] = "login"
gitlab_rails['smtp_enable_starttls_auto'] = false
gitlab_rails['smtp_tls'] = false
gitlab_rails['smtp_pool'] = false
gitlab_rails['smtp_openssl_verify_mode'] = 'none'
gitlab_rails['gitlab_email_from'] = 'gitlab@mbo.dev'
gitlab_rails['gitlab_email_reply_to'] = 'noreply@mbo.dev'
gitlab_rails['gitlab_email_from'] = 'gitlab@mbo.dev'
gitlab_rails['gitlab_email_display_name'] = 'Gitlab'
gitlab_rails['gitlab_email_reply_to'] = 'noreply@mbo.dev'
gitlab_rails['gitlab_email_subject_suffix'] = '[gitlab]'

# database
gitlab_rails['db_adapter'] = "postgresql"
gitlab_rails['db_encoding'] = "unicode"
gitlab_rails['db_database'] = "gitlab"
gitlab_rails['db_username'] = "admin"
gitlab_rails['db_password'] = "s3cr3t"
gitlab_rails['db_host'] = "postgres"
gitlab_rails['db_port'] = 5432
gitlab_rails['db_prepared_statements'] = false
gitlab_rails['db_application_name'] = "gitlab"

# redis
gitlab_rails['redis_host'] = "valkey"
gitlab_rails['redis_port'] = 6379
gitlab_rails['redis_password'] = nil
gitlab_rails['redis_ssl'] = false
gitlab_rails['redis_database'] = 0

# ssh
gitlab_rails['gitlab_shell_ssh_port'] = 22

# hardening
gitlab_rails['gitlab_default_can_create_group'] = false
gitlab_rails['gitlab_signup_enabled'] = false
gitlab_rails['restricted_signup_domains'] = ['mbo.dev']
gitlab_rails['default_projects_limit'] = 0
gitlab_rails['gitlab_default_projects_visibility'] = 'private'
gitlab_rails['gitlab_default_groups_visibility'] = 'private'
gitlab_rails['gitlab_restricted_visibility_levels'] = ['public']
gitlab_rails['gitlab_default_snippets_visibility'] = 'private'
gitlab_rails['user_show_user_profile_link'] = false
gitlab_rails['ssh_host_key_algorithms'] = ['ecdsa-sha2-nistp256', 'rsa-sha2-512']
gitlab_rails['rack_attack_git_basic_auth'] = {
  'enabled' => true,
  'ip_whitelist' => ['127.0.0.1'],
  'maxretry' => 10,
  'findtime' => 60,
  'bantime' => 3600
}
gitlab_rails['gravatar_enabled'] = false
gitlab_rails['profile_enabled'] = false
gitlab_rails['usage_ping_enabled'] = false
gitlab_rails['prometheus_monitoring_enabled'] = false
gitlab_rails['web_ide_clientside_preview_enabled'] = false
gitlab_rails['max_personal_access_token_lifetime'] = 90
gitlab_rails['gitlab_project_import_enabled'] = false
gitlab_rails['gitlab_project_export_enabled'] = false

gitlab_rails['lograge_enabled'] = true
gitlab_rails['logrotate_frequency'] = "daily"
gitlab_rails['logrotate_maxsize'] = nil
gitlab_rails['logrotate_rotate'] = 30