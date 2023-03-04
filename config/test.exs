import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :my_gcp_playground, MyGcpPlayground.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "my_gcp_playground_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :my_gcp_playground_web, MyGcpPlaygroundWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "MiOTadNGciPJwb9uE2qJoIAR3RCk2jLN+YxR5sagn0rpMlOmBzvHp5gB/MwwlZ6z",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
