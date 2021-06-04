defmodule CatWikiAPIWeb.ImagesControllerTest do
  use CatWikiAPIWeb.ConnCase, async: true

  alias CatWikiAPI.Mocks

  @valid_breed_name "abys"
  @invalid_breed_name "xyz"

  @mock_cat %{Mocks.BreedStruct.get() | name: @valid_breed_name}

  setup %{conn: conn} do
    CatWikiAPI.Cats.create_breed(@mock_cat)
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "get /images/:breed_name" do
    test "returns a list of images url", %{conn: conn} do
      route = Routes.images_path(conn, :show, @valid_breed_name)
      response = get_route(conn, route)

      assert is_list(response)
      assert length(response) > 0
      assert Enum.all?(response, &url_match?/1)
    end

    test "?limit={limit} user can select images limit", %{conn: conn} do
      endpoint = "/api/images/#{@valid_breed_name}?limit=2"
      response = json_response(get(conn, endpoint), :ok)
      assert length(response) == 2
    end

    test "unexistent breed name returns an empty list", %{conn: conn} do
      route = Routes.images_path(conn, :show, @invalid_breed_name)
      response = get_route(conn, route)

      assert response == []
    end
  end

  defp url_match?(url) do
    url =~ ~r'cdn\d?\.thecatapi\.com/images/.+\.jpg$'
  end

  defp get_route(conn, route, expected_status \\ :ok) do
    conn
    |> get(route)
    |> json_response(expected_status)
  end
end
