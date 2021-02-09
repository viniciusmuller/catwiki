defmodule CatWikiAPI.Repo.Migrations.CreateBreeds do
  use Ecto.Migration

  def change do
    create table(:breeds, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :breed, :string, null: false
      add :views, :integer

      timestamps()
    end

    create unique_index(:breeds, [:breed])
  end
end
