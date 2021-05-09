defmodule Prova.Repo do
  use Ecto.Repo,
    otp_app: :prova,
    adapter: Ecto.Adapters.Postgres
end
