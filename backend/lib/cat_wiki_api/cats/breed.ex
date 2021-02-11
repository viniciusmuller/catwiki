defmodule CatWikiAPI.Cats.Breed do
  @moduledoc "Breed schema"
  use Ecto.Schema
  import Ecto.Changeset

  @schema ~w(
    views image_url description temperament origin
    lifespan adaptability affection_level child_friendly
    grooming intelligence health_issues social_needs
    stranger_friendly
  )a

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "breeds" do
    field :views, :integer, default: 0
    field :image_url, :string
    field :description, :string
    field :temperament, :string
    field :origin, :string
    field :lifespan, :string
    field :adaptability, :integer
    field :affection_level, :integer
    field :child_friendly, :integer
    field :grooming, :integer
    field :intelligence, :integer
    field :health_issues, :integer
    field :social_needs, :integer
    field :stranger_friendly, :integer

    timestamps()
  end

  @doc false
  def changeset(breed, attrs) do
    breed
    |> cast(attrs, @schema)
    |> validate_required(@schema)
    |> unique_constraint(:name)
  end
end
