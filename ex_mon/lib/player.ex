defmodule ExMon.Player do
  @required_fields [:life, :name, :moves]
  @max_life 100

  @enforce_keys @required_fields
  defstruct [:life, :name, :moves]

  def build(name, rnd, avg, heal) do
    %ExMon.Player{
      name: name,
      moves: %{
        move_rnd: rnd,
        move_avg: avg,
        move_heal: heal
      },
      life: @max_life
    }
  end
end
