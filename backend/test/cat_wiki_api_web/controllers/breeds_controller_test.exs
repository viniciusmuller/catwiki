defmodule CatWikiAPIWeb.BreedsControllerTest do
  use CatWikiAPIWeb.ConnCase, async: true

  test "get /breeds list all breeds" do
    assert 1 == 2
  end

  test "get /breeds/:name returns the desired cat breed" do
    assert 1 == 2
  end

  test "get /breeds?q={query} can search for cat breeds" do
    assert 1 == 2
  end

  test "get request on a breed increase its views" do
    assert 1 == 2
  end
end
