# Internet Test

**Run this program when you don't have internet. It will then slack you when the internet is working again. You will have to make a file called dev_secret.exs in the config directory. This file should have a Slack Webhook url. What are Webhooks? https://slack.com/apps/A0F7XDUAZ-incoming-webhooks**
This is what it should look like:
'''
use Mix.Config
config :internet, :slack, url: "https://hooks.slack.com/services/123456789/123456789/123456789"

'''

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
