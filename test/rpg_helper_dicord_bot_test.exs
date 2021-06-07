defmodule RpgHelperDicordBotTest do
  use ExUnit.Case
  doctest RpgHelperDicordBot

  test "greets the world" do
    assert RpgHelperDicordBot.hello() == :world
  end
end
