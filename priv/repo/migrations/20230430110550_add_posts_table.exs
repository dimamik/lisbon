defmodule Lisbon.Repo.Migrations.AddPostsTable do
  use Ecto.Migration

  def change do
    create table("posts") do
      add :text, :string
    end
  end
end
