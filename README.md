# Internet

**Run this program when you don't have internet. It will then slack you when the internet is working again.**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add internet to your list of dependencies in `mix.exs`:

        def deps do
          [{:internet, "~> 0.0.1"}]
        end

  2. Ensure internet is started before your application:

        def application do
          [applications: [:internet]]
        end
