defmodule CatWikiAPI.Cats do
  @moduledoc """
  The Cats context.
  """

  import Ecto.Query, warn: false
  alias CatWikiAPI.Repo

  alias CatWikiAPI.Cats.Breed

  @doc """
  Returns the list of breeds.

  ## Examples

      iex> list_breeds()
      [%Breed{}, ...]

  """
  def list_breeds do
    Repo.all(Breed)
  end

  @doc """
  Gets a single breed.

  Raises `Ecto.NoResultsError` if the Breed does not exist.

  ## Examples

      iex> get_breed!(123)
      %Breed{}

      iex> get_breed!(456)
      ** (Ecto.NoResultsError)

  """
  def get_breed!(id), do: Repo.get!(Breed, id)

  def get_breed_by_api_name(name) do
    Repo.get_by(Breed, cat_api_id: name)
  end

  @spec query_breeds(String.t()) :: list
  def query_breeds(query) do
    Repo.all(
      from b in Breed,
        where: ilike(b.name, ^"%#{query}%")
    )
  end

  @doc """
  Creates a breed.

  ## Examples

      iex> create_breed(%{field: value})
      {:ok, %Breed{}}

      iex> create_breed(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_breed(attrs \\ %{}) do
    %Breed{}
    |> Breed.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a breed.

  ## Examples

      iex> update_breed(breed, %{field: new_value})
      {:ok, %Breed{}}

      iex> update_breed(breed, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_breed(%Breed{} = breed, attrs) do
    breed
    |> Breed.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a breed.

  ## Examples

      iex> delete_breed(breed)
      {:ok, %Breed{}}

      iex> delete_breed(breed)
      {:error, %Ecto.Changeset{}}

  """
  def delete_breed(%Breed{} = breed) do
    Repo.delete(breed)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking breed changes.

  ## Examples

      iex> change_breed(breed)
      %Ecto.Changeset{data: %Breed{}}

  """
  def change_breed(%Breed{} = breed, attrs \\ %{}) do
    Breed.changeset(breed, attrs)
  end
end
