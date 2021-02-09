defmodule CatWikiAPI.Repo do
  use Ecto.Repo,
    otp_app: :cat_wiki_api,
    adapter: Ecto.Adapters.Postgres
end
