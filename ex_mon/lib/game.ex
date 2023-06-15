defmodule ExMon.Game do
  use Agent

  def start(pc, player) do
    game_info = %{computer: pc, player: player, turn: :player, status: :stated}
    Agent.start_link(fn -> game_info end, name: __MODULE__)
  end

  def info do
    Agent.get(__MODULE__, & &1)
  end
end
