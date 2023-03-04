import Config

config :my_gcp_playground_domain, MyGcpPlaygroundDomain.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "my_gcp_playground_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

config :my_gcp_playground_web, MyGcpPlaygroundWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "MiOTadNGciPJwb9uE2qJoIAR3RCk2jLN+YxR5sagn0rpMlOmBzvHp5gB/MwwlZ6z",
  server: false

config :logger, level: :warn

config :phoenix, :plug_init_mode, :runtime
