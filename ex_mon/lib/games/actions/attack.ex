defmodule ExMon.Games.Actions.Attack do
  @move_rnd 10..35
  @move_avg 18..25

  def opponent(op, move) do
    calculate_power(move)
  end
  defp calculate_power(:chute), do: Enum.random(@move_rnd)
  defp calculate_power(:soco), do: Enum.random(@move_avg)
end
