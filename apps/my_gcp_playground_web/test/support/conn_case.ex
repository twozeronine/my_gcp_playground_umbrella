defmodule MyGcpPlaygroundWeb.ConnCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      import Plug.Conn
      import Phoenix.ConnTest
      import MyGcpPlaygroundWeb.ConnCase

      alias MyGcpPlaygroundWeb.Router.Helpers, as: Routes

      @endpoint MyGcpPlaygroundWeb.Endpoint
    end
  end

  setup tags do
    MyGcpPlaygroundDomain.DataCase.setup_sandbox(tags)
    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
