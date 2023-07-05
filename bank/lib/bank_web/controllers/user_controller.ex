defmodule BankWeb.UserController do
  use BankWeb, :controller

  alias Bank.Users.{Create, User}

  action_fallback BankWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Create.call(params) do
      conn
        |> put_status(:created)
        |> render(:create, user: user)
    end
  end

end
