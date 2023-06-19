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

  def attack_message(:player, demage), do: IO.puts("\n-- The pc attack player with #{demage} of demage")
  def attack_message(:pc, demage), do: IO.puts("\n-- The player attack pc with #{demage} of demage")

end
