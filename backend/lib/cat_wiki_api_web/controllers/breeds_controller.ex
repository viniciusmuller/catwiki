defmodule CatWikiAPIWeb.BreedsController do
  use CatWikiAPIWeb, :controller

  alias CatWikiAPI.Cats

  def index(conn, _params) do
    content = Cats.list_breeds()
    render(conn, "index.json", content: content)
  end
end
