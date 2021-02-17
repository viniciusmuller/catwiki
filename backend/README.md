# CatWikiAPI

This REST API was made using `Elixir v11.1.3`, `Phoenix v1.5.7`, integrating [CatAPI](https://thecatapi.com/)  and following a test driven development strategy.

Design choices:
  - Requests to the CatAPI:
    Since the CatAPI don't have a really large database, we already seed our database with some data from the API, in order to deliver faster responses.

  - Breeds image fetching:
    Storing cat images into our database is not viable, so we need to request the images directly from CatAPI, increasing the response time on the `/images` endpoint.
