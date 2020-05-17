# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vuephxlive,
  ecto_repos: [Vuephxlive.Repo]

# Configures the endpoint
config :vuephxlive, VuephxliveWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "M4c80GVuWTX7OJTw6CtUha5iuiFpxNZ1P+1V8Vnr59o6D6Wbp3kp9E4H8TpB4tTq",
  render_errors: [view: VuephxliveWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Vuephxlive.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "QSXIxXKR"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
