defmodule ElixirPhoenixApiWeb.GreetController do
  use ElixirPhoenixApiWeb, :controller

  def index(conn, _params) do
    json(conn, %{message: "Hello World"})
  end
end
