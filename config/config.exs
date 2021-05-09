# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :prova,
  ecto_repos: [Prova.Repo]

# Configures the endpoint
config :prova, ProvaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QAnGFiZbLxvw/G2t2OW5YmLNHoetrJ3vwvIhMyLV+EdhEfQDuug02qkNPe8eQEyc",
  render_errors: [view: ProvaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Prova.PubSub,
  live_view: [signing_salt: "a3mdXaSr"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
