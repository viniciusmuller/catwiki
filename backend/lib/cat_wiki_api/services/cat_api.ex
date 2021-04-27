defmodule CatWikiAPI.Services.CatAPI do
  use HTTPoison.Base

  @endpoint "https://api.thecatapi.com/v1"
  @api_key ""

  def get_breed_images(breed_id, limit) do
    # hackey: [:insecure] is used to be able to make
    # http requests while in github actions environment
    opts = %{breed_ids: breed_id, limit: limit}
    get("/images/search", [], params: opts, hackney: [:insecure])
  end

  def process_url(url) do
    @endpoint <> url
  end

  @doc "Adds the API key to the headers before every request"
  def process_request_headers(headers) do
    Keyword.put(headers, :"x-api-key", @api_key)
  end

  def process_response_body(body) do
    Jason.decode!(body)
  end
end
