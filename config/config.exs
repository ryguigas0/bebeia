use Mix.Config

config :bebeia,
  discord_bot_api: System.get_env("DISCORD_BOT_API")

config :porcelain,
  driver: Porcelain.Driver.Goon

config :alchemy,
  ffmpeg_path: "/usr/bin/ffmpeg",
  youtube_dl_path: "/usr/local/bin/youtube-dl"
