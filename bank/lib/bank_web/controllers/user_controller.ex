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

end
