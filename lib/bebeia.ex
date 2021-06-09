defmodule Bebeia do
  use Application
  alias Alchemy.Client

  @token Application.fetch_env!(:bebeia, :discord_bot_api)

  def start(_type, _args) do
    run = Client.start(@token)
    load_modules()
    Alchemy.Cogs.set_prefix("&")
    run
  end

  def load_modules do
    use Bebeia.DiceRoller
    use Bebeia.MusicPlayer
  end
end
