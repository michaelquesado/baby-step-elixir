defmodule ExMon do
  alias ExMon.{Player, Game}
  alias Exmon.Games.Status

  @pc "pc"
  # player = ExMon.create_player("quesado", :soco, :chute, :cura)
  def create_player(name, rnd, avg, heal) do
    Player.build(name, rnd, avg, heal)
  end

  # ExMon.init_game(player)
  def init_game(player) do
    @pc
    |> Player.build(:chute, :soco, :cura)
    |> Game.start(player)

    Status.round_message()
  end
end
