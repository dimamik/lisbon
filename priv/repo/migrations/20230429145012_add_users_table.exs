defmodule Lisbon.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table("users") do
      add :email, :string
      add :password_hash, :string
      add :name, :string
    end
  end
end
