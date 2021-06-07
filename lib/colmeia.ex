defmodule Colmeia do
  use Application
  alias Alchemy.Client

  @token Application.fetch_env!(:colmeia, :discord_bot_api)

  def start(_type, _args) do
    run = Client.start(@token)
    load_modules()
    run
  end

  def load_modules() do
    use Colmeia.DiceRoller
  end
end
