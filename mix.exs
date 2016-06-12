defmodule Thing.Mixfile do
  use Mix.Project

  def project do
    [app: :thing,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:postgrex, :ecto, :poison, :logger]]
  end

  defp deps do
    [{:postgrex, ">= 0.0.0"},
     {:ecto, "~> 2.0.0-beta"},
     {:poison, "~> 2.0"}]
  end

  defp description do
    """
    Universal product information API
    """
  end

  defp package do
    [name: :thing,
    files: ["lib", "mix.exs", "README.md", "LICENSE"],
    maintainers: ["Erik Vavro <me@madhax.io>"],
    licenses: ["Apache 2.0"],
    links: %{"GitHub" => "https://github.com/slurmulon/thing"}]
  end
end
