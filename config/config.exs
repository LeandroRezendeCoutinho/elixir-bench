# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bench,
  ecto_repos: [Bench.Repo]

# Configures the endpoint
config :bench, BenchWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "drLs8zehA99pDi6UlB2zux2fWaAgeMF3366DdvycBCWM7h+ESG9U+RKjyNcPM4Le",
  render_errors: [view: BenchWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bench.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "3sTrhutg"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
