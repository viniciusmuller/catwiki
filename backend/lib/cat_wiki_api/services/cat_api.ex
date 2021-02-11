defmodule CatWikiAPI.Services.CatAPI do
  use HTTPoison.Base

  @endpoint "https://api.thecatapi.com/v1"
  @api_key ""

  def process_url(url) do
    @endpoint <> url
  end

  @doc "Adds the API key to the headers before every request"
  def process_request_headers(headers) do
    Keyword.put(headers, :"x-api-key", @api_key)
  end
end
