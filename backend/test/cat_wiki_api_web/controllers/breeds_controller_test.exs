defmodule CatWikiAPIWeb.BreedsControllerTest do
  use CatWikiAPIWeb.ConnCase, async: true

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "get /breeds list all breeds", %{conn: conn} do
    route = Routes.breeds_path(conn, :index)

    response = get_route_200(conn, route)
    assert is_list(response)
  end

  test "get /breeds/:name returns the desired cat breed", %{conn: conn} do
    route = Routes.breeds_path(conn, :show, "testCat")

    response = get_route_200(conn, route)
    assert 1 == 2
  end

  test "get /breeds?q={query} can search for cat breeds", %{conn: conn} do
    route = Routes.breeds_path(conn, :index, q: "kitty")

    response = get_route_200(conn, route)

    assert 1 == 2
  end

  test "get request on a breed increase its views", %{conn: conn} do
    route = Routes.breeds_path(conn, :show, "views kitten")

    response = get_route_200(conn, route)
    assert response.views == 1

    response = get_route_200(conn, route)
    assert response.views == 2
  end

  defp get_route_200(conn, route) do
    json_response(get(conn, route), :ok)
  end
end
