defmodule MyGcpPlaygroundDomain.Repo do
  use Ecto.Repo,
    otp_app: :my_gcp_playground,
    adapter: Ecto.Adapters.Postgres

  @otp_app :MyGcpPlaygroundDomain

  def migrate do
    try do
      path = Application.app_dir(@otp_app, Application.get_env(@otp_app, __MODULE__)[:priv])
      versions = Ecto.Migrator.run(__MODULE__, path, :up, all: true)
      {:ok, versions}
    rescue
      exception ->
        {:error, Exception.format(:error, exception, __STACKTRACE__)}
    end
  end
end
