defmodule MyGcpPlaygroundDomain.Repo do
  use Ecto.Repo,
    otp_app: :my_gcp_playground,
    adapter: Ecto.Adapters.Postgres
end
