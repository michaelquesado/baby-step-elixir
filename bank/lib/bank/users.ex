defmodule Bank.Users do
  alias Bank.Users.Create
  alias Bank.Users.Get

  defdelegate create(params), to: Create, as: :call
  defdelegate get(id), to: Get, as: :call
end
