defmodule Bebeia.MusicPlayer do
  use Alchemy.Cogs
  alias Alchemy.Voice

  Cogs.def play do
    Cogs.say("Precisa colocar um endereço pra começar a tocar: !play youtube.com/video")
  end

  Cogs.def play(url) do
    {:ok, guild} = Cogs.guild()

    vc =
      Enum.find(guild.channels, fn ch -> match?(%Alchemy.Channel.VoiceChannel{bitrate: _}, ch) end)

    Voice.join(guild.id, vc.id)
    Voice.play_url(guild.id, url)
    Cogs.say("Botando #{url} na festa!!")
  end
end
