import Config

config :my_gcp_playground, MyGcpPlaygroundDomain.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "my_gcp_playground_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10,
  port: 25432

config :my_gcp_playground_web, MyGcpPlaygroundWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "Qq2nk+5s71JB8T1A/xGVgB5x2F35qAynYRxdmByDyUYVsFaJoQv+qo0B5Cf1UOC4",
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:default, ~w(--sourcemap=inline --watch)]}
  ]

config :my_gcp_playground_web, MyGcpPlaygroundWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/my_gcp_playground_web/(live|views)/.*(ex)$",
      ~r"lib/my_gcp_playground_web/templates/.*(eex)$"
    ]
  ]

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :plug_init_mode, :runtime

config :phoenix, :stacktrace_depth, 20
