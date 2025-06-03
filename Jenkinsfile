@Library('cicid-shared-lib@dockle-integration') _
def cipipeline = new opstree.ci.templates.java_ci.java_ci()
node {
  cipipeline.call([
  enable_jenkins_build_param_override: true,
    // WORKSPACE MANAGEMENT
    clean_workspace: true,
    ignore_clean_workspace_failure: true,
    delete_dirs: false,
    clean_when_build_aborted: true,
    clean_when_build_failed: true,
    clean_when_not_built: true,
    clean_when_build_succeed: true,
    clean_when_build_unstable: true,
    // VCS MANAGEMENT
    repo_https_url: "https://github.com/ayush090909/simple-java-docker.git",
    repo_ssh_url: "https://github.com/ayush090909/simple-java-docker.gitt",
    repo_branch: "main",
    repo_url_type: "http",
    jenkins_git_creds_id: "shared-lib",
    source_code_path: "",
     // Dependency Scanning
    dependency_check: false,
    dependency_scan_tool: "owasp",
    owasp_project_name: "owasp",
    owasp_report_publish: true,
    owasp_report_format: "html",
    fail_job_if_dependency_returned_exception: true,
    // Creds Scanning
    gitleaks_check: false,
    fail_job_if_leak_detected: false,
    gitleaks_report_format: "json",
    gitleaks_report_jenkins_publish: true,
    perform_code_build: false,
    build_tool: "maven",
    pom_location: " ",
    // Unit Testing
    unit_testing_check: false,
    fail_job_if_unit_issue_detected: false,
    build_tool: "maven",
    unit_test_reports_path: "*/target/surefire-reports/*.xml",
    findbugs_test_report_path: "*/target/findbugs/*.xml",
    withmaven_globaltool_jdk: "",
    withmaven_globaltool_maven: "",
    mvn_settings_path: "settings.xml",
    // Static Code Analysis
    codebase_to_scan_directory: "**",
    static_code_analysis_check: false,
    path_to_sonar_properties: "sonar.properties",
    fail_job_if_analysis_returned_exception: false,
    jenkins_sonarqube_token_creds_id: "sonar-token",
    // Build Dockerfile
    perform_build_dockerfile: true,
    image_name: "java-service",
    dockerfile_location: "/Dockerfile",
    dockerfile_context: "",
    codeartifact_dependency: false,
    codeartifact_domain: "ecomexpress",
    codeartifact_owner: "543339517346",
    // Image scaning
    image_scanning_check: false,
    image_tag: "latest",
    scan_severity: "CRITICAL",
    image_scanning_report_publish: true,
    // Image size validator
    image_size_validator_check: false,
    max_allowed_image_size: 100,
    fail_job_if_validation_fail: false,
    // Publish Artifact(Docker Image)
    artifact_publish_check: false,
    artifact_destination_type: "ecr",
    jenkins_aws_credentials_id: "aws-rajat",
    docker_image_name: "ecom-notification-consumer-service",
    ecr_repo_name: "ecom-notification-consumer-service",
    ecr_region: "ap-south-1",
    account_id: "543339517346",
    //dockle scanning
    dockle_scan_check: 'true', // or 'false'
    dockle_report_publish: 'true', // to publish dockle report
    
    // Hadolint Dockerfile scan
    hadolint_scan_check: 'true',
    hadolint_report_publish: 'true',
    fail_job_on_hadolint_error: 'false',
    dockerfile_context: '',
    repo_dir: '',

    // JIRA
    jenkins_jira_url_env_name: "JIRA_URL",
    jenkins_jira_creds_id: "jira-ticket-update-credentials",
    fail_job_if_jira_operation_failed: true,
    enable_jira: false,
    enable_buildlogurl_in_jiracomment: true,
    // Trigger_pipeline
    enable_trigger_cd_pipeline: false,
    //trigger_params: [[name: 'image_tage', type: 'string'],[name: 'image_name', type: 'string'],[name: 'jira_ticket_id', type: 'string'],[name: 'enable_jira', type: 'boolean']]
    image_name_build_param: "image_name",
    image_tag_build_param: "image_tag",
    enable_jira_build_param: "enable_jira",
    jira_ticket_id_build_param: "jira_ticket_id",
    trigger_cd_pipeline_path: "",
    // Notification
    notification_enabled: false,
    notification_channel: "teams",
    webhook_url_creds_id: "teams_webhook"
  ])
}
