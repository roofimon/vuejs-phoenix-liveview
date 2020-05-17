defmodule Vuephxlive.Repo do
  use Ecto.Repo,
    otp_app: :vuephxlive,
    adapter: Ecto.Adapters.Postgres
end
