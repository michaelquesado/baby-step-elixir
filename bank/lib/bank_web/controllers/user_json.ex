defmodule BankWeb.UserJSON do
  alias Bank.Users.User

  def create(%{user: user}), do: %{ data: data(user) }
  def show(%{user: user}), do: %{ data: data(user) }

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      cep: user.cep,
      email: user.email
    }
  end
end
