defmodule CatWikiAPIWeb.BreedsControllerTest do
  use CatWikiAPIWeb.ConnCase, async: true

  alias CatWikiAPI.Mocks

  @mock_cat Mocks.BreedStruct.get()
  @cat_name "cat"
  @cats [
    %{@mock_cat | cat_api_id: @cat_name, name: @cat_name},
    %{@mock_cat | cat_api_id: "kittycat", name: "catfoo"},
    %{@mock_cat | cat_api_id: "woohoo", name: "kitty"}
  ]

  setup %{conn: conn} do
    Enum.each(@cats, &CatWikiAPI.Cats.create_breed/1)
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "get /breeds" do
    test "/ - list all breeds", %{conn: conn} do
      route = Routes.breeds_path(conn, :index)

      response = get_route(conn, route)
      assert is_list(response)
      cat_names = Enum.map(@cats, fn cat -> cat.name end)

      assert Enum.all?(response, fn cat -> cat["name"] in cat_names end)
    end

    test "/:name - returns 404 if the breed doesn't exist", %{conn: conn} do
      route = Routes.breeds_path(conn, :show, "unexistent breed")

      get_route(conn, route, :not_found)
    end

    test "/:name - returns the desired cat breed", %{conn: conn} do
      route = Routes.breeds_path(conn, :show, @cat_name)

      response = get_route(conn, route)
      assert response["views"] == 1
    end

    test "?q={query} - can search for cat breeds", %{conn: conn} do
      route = Routes.breeds_path(conn, :index, q: @cat_name)

      response = get_route(conn, route)

      assert is_list(response)
      assert length(response) == 2
    end

    test "/:name - request on a breed increase its views", %{conn: conn} do
      route = Routes.breeds_path(conn, :show, @cat_name)

      response = get_route(conn, route)
      assert response["views"] == 1

      response = get_route(conn, route)
      assert response["views"] == 2
    end
  end

  defp get_route(conn, route, status \\ :ok) do
    json_response(get(conn, route), status)
  end
end
