import FooGuard, only: [is_foo: 1]
import BarGuard, only: [is_bar: 1]

defmodule Foobar do
  def build(file_name) do
    file_name
    |> File.read()
    |> handler_file()
  end

  defp handler_file({:ok, content}) do
    result =
      content
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate/1)

    {:ok, result}
  end

  defp handler_file({:error, reason}) do
    {:error, reason}
  end

  def convert_and_evaluate(elem) do
    number = String.to_integer(elem)
    IO.inspect(number)
    evaluate(number)
  end

  defp evaluate(number) when is_foo(number) and is_bar(number), do: :foobar
  defp evaluate(number) when is_foo(number), do: :foo
  defp evaluate(number) when is_bar(number), do: :bar
  defp evaluate(number), do: number
end
