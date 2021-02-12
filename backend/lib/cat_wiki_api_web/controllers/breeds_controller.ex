defmodule CatWikiAPIWeb.BreedsController do
  use CatWikiAPIWeb, :controller

  alias CatWikiAPI.Cats

  def index(conn, _params) do
    content = Cats.list_breeds()
    render(conn, "index.json", content: content)
  end

  def show(conn, %{"name" => name}) do
    cat_data = Cats.get_breed_by_name!(name)

    increased_views = %{views: cat_data.views + 1}
    {:ok, cat_data} = Cats.update_breed(cat_data, increased_views)

    render(conn, "show.json", content: cat_data)
  end
end
