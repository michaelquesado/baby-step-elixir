defmodule BankWeb.UserJSON do
  def create(%{user: user}), do: %{ name: user.name, email: user.email, cep: user.cep }
end
