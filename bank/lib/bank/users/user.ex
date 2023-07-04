defmodule Bank.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:name, :password_hash, :email, :cep]

  schema "users" do
    field :name, :string
    field :password_hash, :string
    field :email, :string
    field :cep, :string

    timestamps()
  end

  def changeset(user \\ %__MODULE__{}, params) do
    user
      |> cast(params, @fields)
      |> validate_request(@fields)
  end
end
