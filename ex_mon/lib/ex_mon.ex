defmodule ExMon do
  alias ExMon.{Player, Game}

  @pc "pc"
  # player = ExMon.create_player("quesado", :soco, :chute, :cura)
  def create_player(name, rnd, avg, heal) do
    Player.build(name, rnd, avg, heal)
  end
  # ExMon.init_game(player)
  def init_game (player) do
    pc = Player.build(@pc, :chute, :soco, :cura)
    Game.start(pc, player)
  end

end
