import FooGuard, only: [is_foo: 1]
import BarGuard, only: [is_bar: 1]

defmodule Foobar do
  def build(file_name) do
    file_name
      |> File.read()
      |> handler_file()
  end

  def handler_file({:ok, content }) do
    result = content
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate/1)
    {:ok, result}
  end

  def handler_file({:error, reason }) do {:error, reason} end

  def convert_and_evaluate (elem) do
    number = String.to_integer(elem)
    IO.inspect(number)
    evaluate(number)
  end

  def evaluate(number) when is_foo(number) and is_bar(number), do: :foobar
  def evaluate(number) when is_foo(number), do: :foo
  def evaluate(number) when is_bar(number), do: :bar
  def evaluate(number), do: number
end
