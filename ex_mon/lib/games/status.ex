defmodule ExMon.Games.Status do

  def round_message(%{status: :started} = info) do
    IO.puts("\n-- Game Starts -- \n")
    IO.inspect(info)
    IO.puts("-------------")
  end

  def round_message(%{status: :continue, turn: player} = info) do
    IO.puts("\n-- It's #{player} turn. -- \n")
    IO.inspect(info)
    IO.puts("-------------")
  end

  def round_message(%{status: :game_over} = info) do
    IO.puts("\n-- Game over. -- \n")
    IO.inspect(info)
    IO.puts("-------------")
  end

  def invalid_move(move) do
    IO.puts("\n-- Invalid move: #{move} --\n")
  end

  def attack_message(:player, demage), do: IO.puts("\n-- The pc attack player with #{demage} of demage")
  def attack_message(:pc, demage), do: IO.puts("\n-- The player attack pc with #{demage} of demage")

end
