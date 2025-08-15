import Config

config :elixir_phoenix_api, ElixirPhoenixApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: String.duplicate("a", 64),
  render_errors: [accepts: ["json"]],
  pubsub_server: ElixirPhoenixApi.PubSub

config :logger, level: :info
