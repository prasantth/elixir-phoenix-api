defmodule ElixirPhoenixApiWeb do
  @moduledoc false

  def controller do
    quote do
      use Phoenix.Controller, namespace: ElixirPhoenixApiWeb

      import Plug.Conn
    end
  end

  def router do
    quote do
      use Phoenix.Router
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
