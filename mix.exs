defmodule UeberauthSlack.Mixfile do
  use Mix.Project

  @version "0.3.0"

  def project do
    [app: :ueberauth_slack,
     version: @version,
     name: "Ueberauth Slack",
     package: package,
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: "https://github.com/hassox/ueberauth_slack",
     homepage_url: "https://github.com/hassox/ueberauth_slack",
     description: description,
     deps: deps,
     docs: docs]
  end

  def application do
    [applications: [:logger, :ueberauth, :oauth2]]
  end

  defp deps do
    [
      {:oauth2, "0.6.0"},
      {:ueberauth, "~> 0.2"},

      # Docs dependencies
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.1", only: :dev},
    ]
  end

  defp docs do
    [extras: ["README.md", "CONTRIBUTING.md"]]
  end

  defp description do
    "An Ueberauth strategy for using Slack to authenticate your users"
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Daniel Neighman"],
      licenses: ["MIT"],
      links: %{"Slack": "https://github.com/hassox/ueberauth_slack"}]
  end
end
