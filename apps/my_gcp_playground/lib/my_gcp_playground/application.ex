defmodule MyGcpPlayground.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      MyGcpPlayground.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: MyGcpPlayground.PubSub}
      # Start a worker by calling: MyGcpPlayground.Worker.start_link(arg)
      # {MyGcpPlayground.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: MyGcpPlayground.Supervisor)
  end
end
