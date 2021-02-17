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

    increased_views = %{views: cat_data.views + 1}
    {:ok, cat_data} = Cats.update_breed(cat_data, increased_views)

    render(conn, "show.json", content: cat_data)
  end
end
