defmodule Bebeia.DiceRoller do
  use Alchemy.Cogs

  Cogs.def dado do
    Cogs.say("Você precisa escrever um número assim: !dado 20")
  end

  Cogs.def dado(num_str) do
    case Integer.parse(num_str) do
      {num, ""} when num > 1 ->
        "<@#{message.author.id}> tirou: #{rolar_dado(num)}"

      _ ->
        "Coloque um número maior que 1"
    end
    |> Cogs.say()
  end

  def rolar_dado(num) when num > 1 do
    Enum.random(1..num) |> Integer.to_string()
  end
end
