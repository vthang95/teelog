# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :teelog,
  ecto_repos: [Teelog.Repo]

# Configures the endpoint
config :teelog, TeelogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PIgRcUGx55X6xC2j7nf9WycL/aoU++32nTl2EcCQezfSskFhSDdD/TurH4sA00vX",
  render_errors: [view: TeelogWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Teelog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
