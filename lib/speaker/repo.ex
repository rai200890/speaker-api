defmodule Speaker.Repo do
  use Ecto.Repo,
    otp_app: :speaker,
    adapter: Ecto.Adapters.Postgres
end
