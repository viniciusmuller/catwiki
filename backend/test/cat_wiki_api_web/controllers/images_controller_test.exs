defmodule CatWikiAPIWeb.ImagesControllerTest do
  use CatWikiAPIWeb.ConnCase, async: true

  @valid_breed_name "Abyssinian"
  @invalid_breed_name "xyz"

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  #TODO use describe here

  test "get /images/:name returns a list of images", %{conn: conn} do
    assert 1 == 2
  end

  test "get /images/:name user can select images limit", %{conn: conn} do
    assert 1 == 2
  end

  test "get /images/:name unexistent breed name returns an error", %{conn: conn} do
    assert 1 == 2
  end

  defp get_route_200(conn, route) do
    json_response(get(conn, route), :ok)
  end
end
