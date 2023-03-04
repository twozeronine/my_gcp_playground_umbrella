import Config

config :my_gcp_playground_web, MyGcpPlaygroundWeb.Endpoint,
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"

config :logger, level: :info
