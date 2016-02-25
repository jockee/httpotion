defmodule HTTPotion.Mixfile do
  use Mix.Project

  def project do
    [ app: :httpotion,
      name: "httpotion",
      source_url: "https://github.com/myfreeweb/httpotion",
      version: "2.2.0",
      elixir:  "~> 1.0",
      docs: [ extras: ["README.md", "CODE_OF_CONDUCT.md"] ],
      description: description,
      deps: deps,
      package: package ]
  end

  def application do
    [ applications: [:ssl, :ibrowse] ]
  end

  defp description do
    """
    Fancy HTTP client for Elixir, based on ibrowse.
    """
  end

  defp deps do
    [ {:ibrowse, nil,
        [git: "https://github.com/cmullaparthi/ibrowse.git", tag: "v4.1.2", manager: :rebar]},
      {:ex_doc, "~> 0.11", only: [:dev, :test, :docs]} ]
  end

  defp package do
    [ files: [ "lib", "mix.exs", "README.md", "CODE_OF_CONDUCT.md", "UNLICENSE" ],
      maintainers: [ "Greg V", "Aleksei Magusev" ],
      licenses: [ "Unlicense" ],
      links: %{ "GitHub" => "https://github.com/myfreeweb/httpotion" } ]
  end
end
