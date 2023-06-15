defmodule FooGuard do
  defguard is_foo(number) when rem(number, 3) == 0
end
