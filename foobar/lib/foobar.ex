defmodule Foobar do
  def build (file_name) do
    file = File.read(file_name)
    handler_file(file)
  end

  def handler_file ({:ok, result }) do result end
  def handler_file ({:error, reason }) do reason end
end
