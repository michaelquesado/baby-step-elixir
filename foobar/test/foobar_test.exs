defmodule FoobarTest do
  use ExUnit.Case

  describe "build/1" do
    test "should return a converted list when a valid file is provided" do
      assert Foobar.build("numbers.txt") ==
               {:ok, [1, :foo, 4, 1, :bar, :foo, 7, :bar, :foo, 2, :foobar, 59, 1003]}
    end

    test "should return a error when a invalid list is provided" do
      assert Foobar.build("invalid.txt") == {:error, :enoent}
    end
  end
end
