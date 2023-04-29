defmodule Lisbon.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      LisbonWeb.Telemetry,
      # Start the Ecto repository
      Lisbon.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Lisbon.PubSub},
      # Start Finch
      {Finch, name: Lisbon.Finch},
      # Start the Endpoint (http/https)
      LisbonWeb.Endpoint
      # Start a worker by calling: Lisbon.Worker.start_link(arg)
      # {Lisbon.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Lisbon.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LisbonWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
