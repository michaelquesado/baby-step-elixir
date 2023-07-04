defmodule BankWeb.WelcomeController do
  use BankWeb, :controller

  def index(conn, _params) do
    conn
      |> put_status(:ok)
      |> json(%{message: "Ola mundo"})
  end
end
