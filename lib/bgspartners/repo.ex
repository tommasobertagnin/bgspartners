defmodule Bgspartners.Repo do
  use Ecto.Repo,
    otp_app: :bgspartners,
    adapter: Ecto.Adapters.Postgres
end
