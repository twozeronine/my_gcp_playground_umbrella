defmodule MyGcpPlaygroundWeb.PageController do
  use MyGcpPlaygroundWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
