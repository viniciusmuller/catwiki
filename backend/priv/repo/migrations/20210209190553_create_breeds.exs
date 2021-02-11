defmodule CatWikiAPI.Repo.Migrations.CreateBreeds do
  use Ecto.Migration

  def change do
    create table(:breeds, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :views, :integer
      add :name, :string
      add :image_url, :string
      add :description, :text
      add :temperament, :string
      add :origin, :string
      add :life_span, :string
      add :adaptability, :integer
      add :affection_level, :integer
      add :child_friendly, :integer
      add :grooming, :integer
      add :intelligence, :integer
      add :health_issues, :integer
      add :social_needs, :integer
      add :stranger_friendly, :integer

      timestamps()
    end

    create unique_index(:breeds, [:name])
  end
end
