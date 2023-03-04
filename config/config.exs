import Config

config :my_gcp_playground_domain,
  ecto_repos: [MyGcpPlaygroundDomain.Repo]

config :my_gcp_playground_web,
  ecto_repos: [MyGcpPlaygroundDomain.Repo],
  generators: [context_app: :my_gcp_playground]

config :my_gcp_playground_web, MyGcpPlaygroundWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: MyGcpPlaygroundWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MyGcpPlayground.PubSub,
  live_view: [signing_salt: "CzW1OFLP"]

config :esbuild,
  version: "0.14.29",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../apps/my_gcp_playground_web/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
