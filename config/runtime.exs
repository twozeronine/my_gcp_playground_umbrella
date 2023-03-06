import Config

if config_env() == :prod do
  config :my_gcp_playground_domain, MyGcpPlaygroundDomain.Repo,
    username: System.get_env("REPO_USERNAME"),
    password: System.get_env("REPO_PASSWORD"),
    hostname: System.get_env("REPO_HOSTNAME")

  config :my_gcp_playground_web, MyGcpPlaygroundWeb.Endpoint, secret_key_base: System.get_env("SECRET_KEY_BASE")
end
