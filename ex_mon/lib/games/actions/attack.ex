defmodule ExMon.Games.Actions.Attack do
  @move_rnd 10..35
  @move_avg 18..25

  def opponent(op, move) do
    IO.inspect(op)
    calculate_power(move)
     |> take_demage(op)
  end

  defp calculate_power(:chute), do: Enum.random(@move_rnd)
  defp calculate_power(:soco), do: Enum.random(@move_avg)

  defp take_demage(demage, op) do
   Map.get(op, :life)
    |> make_demage(demage)
  end

  defp make_demage(life, demage) when life - demage < 0, do: 0
  defp make_demage(life, demage), do: life - demage
end
