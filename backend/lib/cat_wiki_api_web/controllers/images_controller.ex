defmodule CatWikiAPIWeb.ImagesController do
  use CatWikiAPIWeb, :controller

  alias CatWikiAPI.Cats
  alias CatWikiAPI.Services.CatAPI

  @default_images_limit 5

  # {
  # @api {get} images/:name?[limit] 1. Get images from a breed
  # @apiGroup Images
  # @apiParam {String} name The name of the breed (e.g: Persian).
  # @apiParam {Number} limit Max image limit (Optional) (Default: 5)
  # @apiSuccess {List} imagesUrl JSON list containing image urls from the breed.
  # }
  def show(conn, %{"breed" => breed_name} = params) do
    breed = Cats.get_breed_by_api_name(breed_name)
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
