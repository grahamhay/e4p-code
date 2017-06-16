defmodule TextClient.Mixfile do
  use Mix.Project

  def project do
    [
      app: :text_client,
      version: "0.1.0",
      elixir:  ">= 1.4.2",
      build_embedded:  Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      hangman: [ path: "../hangman" ]
    ]
  end
end
