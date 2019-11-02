defmodule Mojito.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = []
    ## your ad here

    opts = [strategy: :one_for_one, name: Mojito.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
