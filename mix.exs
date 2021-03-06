defmodule Test.Mixfile do
  use Mix.Project

  def project do
    [app: :test,
     version: "0.0.1",
     elixir: "~> 1.1-dev",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:amqp, "0.0.6"},
     {:rabbit_common, github: "jbrisbin/rabbit_common", tag: "rabbitmq-3.4.0-community", override: true}]
  end
end
