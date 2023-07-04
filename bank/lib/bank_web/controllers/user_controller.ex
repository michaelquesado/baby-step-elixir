defmodule BankWeb.UserController do
  use BankWeb, :controller

  alias Bank.Users.Create

  def create(conn, params) do
    params
    |> Create.call()
    |> handle_response(conn)
  end

  defp handle_response({:ok, user}, conn) do
    conn
    |> put_status(:created)
    |> render(:create, user: user)
  end

  # defp handle_response({:error, _changeset} = error, conn) do
  #   conn
  #   |> put_status(:bad_request)
  #   |> render(:create, error: error)
  # end
end
