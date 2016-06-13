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
    #[applications: [:phoenix, :postgrex, :ecto, :poison, :logger]]
    [applications: [:phoenix, :ecto, :cowboy, :logger]]
  end

  defp deps do
     [{:ecto, "~> 2.0.0-beta"},
     {:phoenix, "~> 1.1.4"},
     {:cowboy, "~> 1.0"}]
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
