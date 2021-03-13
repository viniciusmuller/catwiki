defmodule CatWikiAPIWeb.ErrorViewTest do
  use CatWikiAPIWeb.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders 404.json" do
    url = CatWikiAPIWeb.Endpoint.url()
    expected = %{error: "Not found", help: "See the docs at #{url}/docs/index.html"}
    assert render(CatWikiAPIWeb.ErrorView, "404.json", []) == expected
  end

  test "renders 500.json" do
    expected = %{errors: %{detail: "Internal Server Error"}}
    assert render(CatWikiAPIWeb.ErrorView, "500.json", []) == expected
  end
end
