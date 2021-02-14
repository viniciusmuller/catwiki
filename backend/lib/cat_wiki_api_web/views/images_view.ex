defmodule CatWikiAPIWeb.ImagesView do
  use CatWikiAPIWeb, :view

  def render("show.json", %{content: url_list}) do
    url_list
  end
end
