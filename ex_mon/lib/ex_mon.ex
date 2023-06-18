defmodule ExMon do
  alias ExMon.{Player, Game}
  alias ExMon.Games.{Actions, Status}

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

  def make_move(move) do
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.invalid_move(move)
  defp do_move({:ok, move}) do
    case move do
      :cura -> "realiza cura"
      move -> Actions.attack(move)
    end
  end


end
