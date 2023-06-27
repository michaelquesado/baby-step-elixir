defmodule ExMon.Games.Actions.Heal do
  @heal_power 18..25
  @max_life 100

  alias ExMon.Game
  alias ExMon.Games.Status

  def life(who) do
    player = Game.fetch_player(who)
    amount = calculate_heal()

    amount_heal = amount + player.life
    cond do
      amount_heal >= @max_life -> apply_heal(@max_life, who)
      true -> apply_heal(amount_heal, who)
    end
  end

  defp calculate_heal do Enum.random(@heal_power) end

  defp apply_heal(amount_to_heal, who) do
    player = Map.put(Game.fetch_player(who), :life, amount_to_heal)
    Game.info()
    |> Map.put(who, player)
    |> Game.update()

    Status.heal_message(who, amount_to_heal)
  end
end
