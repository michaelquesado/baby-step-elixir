defmodule ExMon.Player do
  @required_fields [:life, :name, :move_rnd, :move_avg, :move_heal]
  @max_life 100

  @enforce_keys @required_fields
  defstruct [:life, :name, :move_rnd, :move_avg, :move_heal]

  def build(name, rnd, avg, heal) do
    %ExMon.Player{
      name: name,
      move_rnd: rnd,
      move_avg: avg,
      move_heal: heal,
      life: @max_life
    }
  end
end
