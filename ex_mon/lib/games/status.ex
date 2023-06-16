defmodule Exmon.Games.Status do
  alias ExMon.Game

  def round_message do
    IO.puts("\n-- Game Starts -- \n")
    IO.inspect(Game.info())
    IO.puts('-------------')
  end
end
