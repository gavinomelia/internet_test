defmodule Mix.Tasks.Internet.Working do
  use Mix.Task

   @shortdoc "Runs internet.ex. That program tells you when the internet is working."

  def run(_args) do
    Mix.shell.cmd("mix run -e Internet.working?")
  end
end
