# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bgspartners,
  ecto_repos: [Bgspartners.Repo]

# Configures the endpoint
config :bgspartners, BgspartnersWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Bzqu7uA0WJtSiY3TogTBW7fN/MhIH1NSqfQPrjRsUc0SpP7ExR7VTCVqAK14bqzI",
  render_errors: [view: BgspartnersWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Bgspartners.PubSub,
  live_view: [signing_salt: "UqhG1OrR"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
