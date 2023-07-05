defmodule BankWeb.UserController do
  use BankWeb, :controller

  alias Bank.Users
  alias Users.User

  action_fallback BankWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Users.create(params) do
      conn
        |> put_status(:created)
        |> render(:create, user: user)
    end
  end

  def show(conn, %{"id" => id}) do
    IO.inspect(Users.get(id))
    with {:ok, %User{} = user} <- Users.get(id) do
      conn
        |> put_status(:ok)
        |> render(:show, user: user)
    end
  end

end
