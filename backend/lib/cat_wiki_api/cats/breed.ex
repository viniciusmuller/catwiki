defmodule CatWikiAPI.Cats.Breed do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "breeds" do
    field :breed, :string
    field :views, :integer, default: 1

    timestamps()
  end

  @doc false
  def changeset(breed, attrs) do
    breed
    |> cast(attrs, [:breed, :views])
    |> validate_required([:breed, :views])
    |> unique_constraint(:breed)
  end
end
