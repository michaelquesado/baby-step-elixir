defmodule ExMon.Games.Actions.Heal do
  @heal_power 18..25

  alias ExMon.Game
  alias ExMon.Games.Status

  def life(who) do
    player = Game.fetch_player(who)
    amount = calculate_heal

    verify_can_heal(amount,player)
     |> apply_heal(who)
  end

  defp calculate_heal do Enum.random(@heal_power) end

  defp verify_can_heal(amount, %{life: life }) do
    amount_to_heal = amount + life

   if amount_to_heal >= 100 do
    amount_to_heal = 100
   end

   amount_to_heal
  end


  defp apply_heal(amount_to_heal, who) do
    Game.info()
    |> Map.put(who, :life, amount_to_heal)
    |> Game.update()

    Status.heal_message(who, amount)
  end
end
