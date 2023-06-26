defmodule ExMon.Games.Actions.Attack do
  alias ExMon.Game
  alias ExMon.Games.Status

  @move_rnd 10..35
  @move_avg 18..25

  def opponent(op, move, who) do
    calculate_power(move)
     |> take_demage(op, who)
  end

  defp calculate_power(:chute), do: Enum.random(@move_rnd)
  defp calculate_power(:soco), do: Enum.random(@move_avg)

  defp take_demage(demage, op, who) do
   life = Map.get(op, :life)
    |> make_demage(demage)

   op = Map.put(op, :life, life)
   Game.info()
    |> Map.put(who, op)
    |> Game.update()

  Status.attack_message(who, demage)
  end

  defp make_demage(life, demage) when life - demage < 0, do: 0
  defp make_demage(life, demage), do: life - demage

end
