@Library('ecom-cicid-shared-lib') _
def cipipeline = new opstree.ci.templates.java_ci.java_ci()
node {
  cipipeline.call([
  enable_jenkins_build_param_override: true,
    // WORKSPACE MANAGEMENT
    clean_workspace: true,
    ignore_clean_workspace_failure: false,
    delete_dirs: false,
    clean_when_build_aborted: true,
    clean_when_build_failed: true,
    clean_when_not_built: true,
    clean_when_build_succeed: true,
    clean_when_build_unstable: true,
    // VCS MANAGEMENT
    repo_https_url: "https://scm.ecomexpress.in/scm/las/ecom-notification-service-1.0.git",
    repo_ssh_url: "https://scm.ecomexpress.in/scm/las/ecom-notification-service-1.0.git",
    repo_branch: "opstree-lastmile",
    repo_url_type: "http",
    jenkins_git_creds_id: "bit_bucket-key",
    source_code_path: "/ecom-notification-consumer-service",
     // Dependency Scanning
    dependency_check: true,
    dependency_scan_tool: "owasp",
    owasp_project_name: "owasp",
    owasp_report_publish: true,
    owasp_report_format: "html",
    fail_job_if_dependency_returned_exception: true,
    // Creds Scanning
    gitleaks_check: true,
    fail_job_if_leak_detected: false,
    gitleaks_report_format: "json",
    gitleaks_report_jenkins_publish: true,
    perform_code_build: true,
    build_tool: "maven",
    pom_location: " ",
    // Unit Testing
    unit_testing_check: true,
    fail_job_if_unit_issue_detected: false,
    build_tool: "maven",
    unit_test_reports_path: "*/target/surefire-reports/*.xml",
    findbugs_test_report_path: "*/target/findbugs/*.xml",
    withmaven_globaltool_jdk: "",
    withmaven_globaltool_maven: "",
    mvn_settings_path: "settings.xml",
    // Static Code Analysis
    codebase_to_scan_directory: "**",
    static_code_analysis_check: true,
    path_to_sonar_properties: "sonar.properties",
    fail_job_if_analysis_returned_exception: false,
    jenkins_sonarqube_token_creds_id: "sonar-token",
    // Build Dockerfile
    perform_build_dockerfile: true,
    image_name: "ecom-notification-consumer-service",
    dockerfile_location: "/ecom-notification-consumer-service/Dockerfile",
    dockerfile_context: "",
    codeartifact_dependency: true,
    codeartifact_domain: "ecomexpress",
    codeartifact_owner: "543339517346",
    // Image scaning
    image_scanning_check: true,
    image_tag: "latest",
    scan_severity: "CRITICAL",
    image_scanning_report_publish: true,
    // Image size validator
    image_size_validator_check: true,
    max_allowed_image_size: 100,
    fail_job_if_validation_fail: false,
    // Publish Artifact(Docker Image)
    artifact_publish_check: true,
    artifact_destination_type: "ecr",
    jenkins_aws_credentials_id: "aws-rajat",
    docker_image_name: "ecom-notification-consumer-service",
    ecr_repo_name: "ecom-notification-consumer-service",
    ecr_region: "ap-south-1",
    account_id: "543339517346",
    // JIRA
    jenkins_jira_url_env_name: "JIRA_URL",
    jenkins_jira_creds_id: "jira-ticket-update-credentials",
    fail_job_if_jira_operation_failed: true,
    enable_jira: true,
    enable_buildlogurl_in_jiracomment: true,
    // Trigger_pipeline
    enable_trigger_cd_pipeline: true,
    //trigger_params: [[name: 'image_tage', type: 'string'],[name: 'image_name', type: 'string'],[name: 'jira_ticket_id', type: 'string'],[name: 'enable_jira', type: 'boolean']]
    image_name_build_param: "image_name",
    image_tag_build_param: "image_tag",
    enable_jira_build_param: "enable_jira",
    jira_ticket_id_build_param: "jira_ticket_id",
    trigger_cd_pipeline_path: "CD/Test/Lastmile/ecom-notification-consumer-service/ecom-notification-consumer-service_CD_Pipeline",
    // Notification
    notification_enabled: true,
    notification_channel: "teams",
    webhook_url_creds_id: "teams_webhook"
  ])
}
