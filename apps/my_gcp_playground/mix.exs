defmodule MyGcpPlayground.MixProject do
  use Mix.Project

  def project() do
    [
      app: :my_gcp_playground,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.12",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application() do
    [
      mod: {MyGcpPlayground.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps() do
    [
      {:phoenix_pubsub, "~> 2.0"},
      {:jason, "~> 1.2"}
    ]
  end
end
