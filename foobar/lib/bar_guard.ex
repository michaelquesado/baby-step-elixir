defmodule BarGuard do
  defguard is_bar(number) when rem(number, 5) == 0
end
