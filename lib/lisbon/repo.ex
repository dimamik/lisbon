defmodule Lisbon.Repo do
  use Ecto.Repo,
    otp_app: :lisbon,
    adapter: Ecto.Adapters.Postgres
end
