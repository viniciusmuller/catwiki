# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cat_wiki_api,
  namespace: CatWikiAPI,
  ecto_repos: [CatWikiAPI.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :cat_wiki_api, CatWikiAPIWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8JuRv+XvfeHyBYS4QXuxk4gfrBg6vLMFOfyZVZcHCaThT0kRjMLumB76yK1MNzk9",
  render_errors: [view: CatWikiAPIWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: CatWikiAPI.PubSub,
  live_view: [signing_salt: "OZTNU+cG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
