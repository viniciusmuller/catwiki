defmodule CatWikiAPI.Mocks.BreedStruct do
  @moduledoc "This module contains a valid `CatWikiAPI.Cats.Breed` schema."

  def get do
    %{
      name: "mock kitten",
      origin: "greece",
      affection_level: 4,
      child_friendly: 4,
      description: "test",
      grooming: 3,
      health_issues: 1,
      intelligence: 3,
      life_span: "9 - 12",
      social_needs: 4,
      stranger_friendly: 4,
      temperament: "happy",
      adaptability: 3,
      image_url: "https://awesomephoenixkittens.com/cat.png",
    }
  end
end
