defmodule CatWikiAPIWeb.BreedsView do
  use CatWikiAPIWeb, :view

  def render("index.json", %{content: breeds_list}) do
    breeds_list
  end

  def render("show.json", %{content: cat_data}) do
    cat_data
  end
end
