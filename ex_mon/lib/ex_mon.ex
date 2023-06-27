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

    Status.round_message(Game.info())
  end

  def make_move(move) do
    case Map.get(Game.info(), :status) do
      :game_over -> Status.round_message(Game.info())
      _ -> move
      |> Actions.fetch_move()
      |> do_move()
    end


    pc_move(Game.info())
  end

  defp do_move({:error, move}), do: Status.invalid_move(move)
  defp do_move({:ok, move}) do
    case move do
      :cura -> Actions.heal()
      move -> Actions.attack(move)
    end

    Status.round_message(Game.info())
  end

  defp pc_move(%{turn: :pc, status: :continue}) do
    {:ok, Enum.random([:chute, :soco, :cura])}
     |>do_move()
  end

  defp pc_move(_), do: :ok

end
