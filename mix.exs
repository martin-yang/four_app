defmodule FourApp.Mixfile do
  use Mix.Project

  def project do
    [ app: :four_app,
      version: "0.0.1",
      build_per_environment: true,
      dynamos: [FourApp.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo,:postgrex,:ecto],
      mod: { FourApp, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "~> 0.1.0-dev", github: "dynamo/dynamo" },
#      {:json,   github: "cblage/elixir-json"},
       {:jsex, github: "talentdeficit/jsex"},
      {:postgrex,github: "ericmj/postgrex",override: true},
      {:ecto, github: "elixir-lang/ecto"} ]
  end
end
