defmodule ElixirPhoenixApiWeb.GreetControllerTest do
  use ExUnit.Case, async: true
  use Plug.Test

  alias ElixirPhoenixApiWeb.Router

  @opts Router.init([])

  test "GET /greet" do
    conn = conn(:get, "/greet")
    conn = Router.call(conn, @opts)

    assert conn.status == 200
    assert conn.resp_body == ~s({"message":"Hello World"})
  end
end
