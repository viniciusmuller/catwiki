defmodule CatWikiAPIWeb.BreedsController do
  use CatWikiAPIWeb, :controller

  def index(conn, _params) do
    content = %{test: 42}
    render(conn, "index.json", content: content)
  end
end
