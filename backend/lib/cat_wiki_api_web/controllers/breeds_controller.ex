defmodule CatWikiAPIWeb.BreedsController do
  use CatWikiAPIWeb, :controller

  alias CatWikiAPI.Cats

  # {
  # @api {get} breeds?[q] 1. List Breeds
  # @apiGroup Breeds
  # @apiParam {String} q A query for filtering breeds (Optional)

  # @apiSuccess {List} breeds list containing JSON objects.
  # }
  def index(conn, %{"q" => query}) do
    matching_breeds = Cats.query_breeds(query)
    render(conn, "index.json", content: matching_breeds)
  end

  def index(conn, _params) do
    content = Cats.list_breeds()
    render(conn, "index.json", content: content)
  end

  # {
  # @api {get} breeds/:name 2. Get information about a breed
  # @apiGroup Breeds
  # @apiParam {String} name The name of the breed (e.g: Persian).
  # @apiSuccess {Object} Breed JSON object containing details about the breed.
  # }
  def show(conn, %{"name" => name}) do
    cat_data = Cats.get_breed_by_name(name)
    resolve_breed(conn, cat_data)
  end

  defp resolve_breed(conn, nil) do
    conn
    |> put_status(:not_found)
    |> render("breed_not_found.json")
  end

  defp resolve_breed(conn, breed) do
    increased_views = %{views: breed.views + 1}
    {:ok, breed} = Cats.update_breed(breed, increased_views)
    render(conn, "show.json", content: breed)
  end
end
