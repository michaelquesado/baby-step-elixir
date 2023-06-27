defmodule ExMon.Game do
  use Agent

  alias ExMon.Player

  def start(pc, player) do
    game_info = %{pc: pc, player: player, turn: :player, status: :started}
    Agent.start_link(fn -> game_info end, name: __MODULE__)
  end

  def info do
    Agent.get(__MODULE__, & &1)
  end

  def update(state) do
    Agent.update(__MODULE__, fn _ -> update_game_status(state) end)
  end

  def fetch_player(player), do: Map.get(info(), player)

  def turn, do: Map.get(info(), :turn)

  defp update_game_status(%{player: %Player{life: player_life}, pc: %Player{life: pc_life}} = state)
    when player_life == 0 or pc_life == 0, do: Map.put(state, :status, :game_over)

  defp update_game_status(state) do
    state
      |> Map.put(:status, :continue)
      |> update_turn()
  end

  defp update_turn(%{turn: :player} = state), do: Map.put(state, :turn, :pc)
  defp update_turn(%{turn: :pc} = state), do: Map.put(state, :turn, :player)

end
