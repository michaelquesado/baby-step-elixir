defmodule Bank.Users do
  alias Bank.Users.Create

  defdelegate create(params), to: Create, as: :call
end
