defmodule Foobar do
  def build (file_name) do
    file_name
      |> File.read()
      |> handler_file()
  end

  def handler_file ({:ok, result }) do
    result
      |> String.split(",")
      |> Enum.map(&String.to_integer/1)
  end
  def handler_file ({:error, reason }) do reason end
end
