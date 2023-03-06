import Config

config :my_gcp_playground_web, MyGcpPlaygroundWeb.Endpoint,
  url: [host: "example.com", port: 80],
  http: [
    port: 8080,
    transport_options: [
      socket_opts: [:inet6],
      num_acceptors: 1_000,
      max_connections: 1_048_576
    ]
  ],
  server: true,
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  check_orgin: false,
  cache_static_manifest: "priv/static/cache_manifest.json"

config :my_gcp_playground_domain, MyGcpPlaygroundDomain.Repo,
    database: "my_gcp_playground_prod",
    pool_size: 10,
    port: 5432,
    priv: "priv/repo",
    ssl: false,
    socket_options: [:inet6]

config :logger, level: :info
