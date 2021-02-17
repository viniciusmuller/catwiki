defmodule CatWikiAPIWeb.ImagesController do
  use CatWikiAPIWeb, :controller

  alias CatWikiAPI.Cats
  alias CatWikiAPI.Services.CatAPI

  @default_images_limit 5

  def show(conn, %{"breed" => breed_name} = params) do
    breed = Cats.get_breed_by_name(breed_name)
    images = fetch_images(breed, params["limit"])
    render(conn, "show.json", content: images)
  end

  defp fetch_images(nil, _), do: []
  defp fetch_images(breed, limit) do
    limit = limit || @default_images_limit
    {:ok, response} = CatAPI.get_breed_images(breed.cat_api_id, limit)
    Enum.map(response.body, fn breed -> breed["url"] end)
  end
end
