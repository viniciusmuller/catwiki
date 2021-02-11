# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CatWikiAPI.Repo.insert!(%CatWikiAPI.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias CatWikiAPI.Services.CatAPI
alias CatWikiAPI.Cats.Breed
alias CatWikiAPI.Repo

defmodule CatWikiAPI.Seeds do
  def insert_breed!(breed) do
    breed = add_image_url_to_breed(breed)

    %Breed{}
    |> Breed.changeset(breed)
    |> Repo.insert!()
  end

  defp add_image_url_to_breed(breed) do
    Map.put(breed, "image_url", breed["image"]["url"])
  end
end

%{body: breeds} = CatAPI.get!("/breeds")

# For the sake of simplicity, we remove a few cat breeds
# that doesn't have an image on CatAPI
breeds
# TODO: filter seems to be not working
|> Enum.filter(&Map.has_key?(&1, "image"))
|> Enum.each(&CatWikiAPI.Seeds.insert_breed!/1)
