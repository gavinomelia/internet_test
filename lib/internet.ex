defmodule Internet do

  HTTPoison.start
  def internet_working? do
    case HTTPoison.get("google.com") do
      {:ok, _} -> tell_dad
      _ -> retry
    end
  end

  def retry do
    :timer.sleep(45000)
    internet_working?
  end

  def tell_dad do
    {:ok, message} = Poison.encode(%{text: "@duff and @gavin: The internet is working! Yippee!"})
    HTTPoison.post!(Application.get_env(:internet, :slack)[:url], message)
  end
end
Internet.internet_working?
