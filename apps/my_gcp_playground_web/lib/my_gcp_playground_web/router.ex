defmodule MyGcpPlaygroundWeb.Router do
  use MyGcpPlaygroundWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {MyGcpPlaygroundWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MyGcpPlaygroundWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: MyGcpPlaygroundWeb.Telemetry
    end
  end
end
