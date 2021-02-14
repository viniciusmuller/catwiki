defmodule CatWikiAPIWeb.ImagesController do
  use CatWikiAPIWeb, :controller

  alias CatWikiAPI.Cats
  alias CatWikiAPI.Services.CatAPI

  @default_images_limit 5

  def show(conn, %{"breed" => breed_name} = params) do
    breed = Cats.get_breed_by_name!(breed_name)
    limit = params["limit"] || @default_images_limit

    {:ok, response} = CatAPI.get_breed_images(breed.cat_api_id, limit)
    images = Enum.map(response.body, fn breed -> breed["url"] end)

    render(conn, "show.json", content: images)
  end
end
