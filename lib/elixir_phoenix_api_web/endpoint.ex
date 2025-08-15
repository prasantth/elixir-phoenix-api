defmodule ElixirPhoenixApiWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :elixir_phoenix_api

  plug(Plug.RequestId)
  plug(Plug.Telemetry, event_prefix: [:phoenix, :endpoint])

  plug(ElixirPhoenixApiWeb.Router)
end
