defmodule ElixirPhoenixApiWeb.Router do
  use ElixirPhoenixApiWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", ElixirPhoenixApiWeb do
    pipe_through(:api)

    get("/greet", GreetController, :index)
  end
end
