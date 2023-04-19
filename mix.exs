defmodule Cowboy.MixProject do
  use Mix.Project

  def project do
    [
      app: :cowboy,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      optional_applications: [:quicer]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:cowlib, git: "https://github.com/ninenines/cowlib", branch: "qpack"},
      {:ranch, git: "https://github.com/ninenines/ranch", tag: "1.8.0"},
      {:quicer, git: "https://github.com/emqx/quic", branch: "main", optional: true}
    ]
  end
end
