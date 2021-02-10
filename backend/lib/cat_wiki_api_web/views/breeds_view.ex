defmodule CatWikiAPIWeb.BreedsView do
  use CatWikiAPIWeb, :view

  def render("index.json", %{content: test}) do
    %{test: test.test}
  end
end
