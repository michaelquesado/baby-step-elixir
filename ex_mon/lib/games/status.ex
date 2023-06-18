defmodule ExMon.Games.Status do
  alias ExMon.Game

  def round_message do
    IO.puts("\n-- Game Starts -- \n")
    IO.inspect(Game.info())
    IO.puts("-------------")
  end

  def invalid_move(move) do
    IO.puts("\n-- Invalid move: #{move}")
  end

end
