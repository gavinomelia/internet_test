defmodule Internet do
  def working? do
    case HTTPoison.get("google.com") do
      {:ok, _} -> notify_peeps
      _ -> retry
    end
  end

  defp retry do
    :timer.sleep(45000)
    working?
  end

  defp notify_peeps do
    {:ok, message} = Poison.encode(%{text: "@duff and @gavin: The internet is working! Yippee!"})
    HTTPoison.post!(Application.get_env(:internet, :slack)[:url], message)
  end
end
