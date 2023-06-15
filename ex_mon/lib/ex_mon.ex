defmodule ExMon do
  alias ExMon.Player

  def create_player(name, rnd, avg, heal) do
    Player.build(name, rnd, avg, heal)
  end
end
