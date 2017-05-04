# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rethink_phx,
  ecto_repos: [RethinkPhx.Repo]

# Configures the endpoint
config :rethink_phx, RethinkPhx.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lU7GILNnut8QdWnr1h3GV5p4wj0xoq6pecZJlD/m5DZi0B9cx+Bk1Xf6UQIAfyxv",
  render_errors: [view: RethinkPhx.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RethinkPhx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
