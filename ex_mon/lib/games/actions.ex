defmodule ExMon.Games.Actions do
  alias ExMon.Game
  alias ExMon.Games.Actions.{Attack,Heal}

  def fetch_move(move) do
   Game.fetch_player(:player)
    |> Map.get(:moves)
    |> find_move(move)
  end

  defp find_move(moves, move) do
    Enum.find_value(moves, {:error, move}, fn {_key, value} -> if value == move, do: {:ok, move} end)
  end

  def attack(move) do
    case Game.turn() do
      :player -> Attack.opponent(Game.fetch_player(:pc), move, :pc)
      :pc     -> Attack.opponent(Game.fetch_player(:player), move, :player)
    end
  end

  def heal do
    case Game.turn() do
      :player -> Heal.life(:player)
      :pc -> Heal.life(:pc)
    end
  end

end
