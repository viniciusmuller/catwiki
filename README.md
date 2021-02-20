# CatWiki

# Application currently in development

My implementation fullfilling the user stories from  [devChallenges CatWiki challenge](https://devchallenges.io/challenges/f4NJ53rcfgrP6sBMD2jt)

- [Details about the backend (Elixir + Phoenix)](backend#catwikiapi)
- [Details about the frontend (Typescript + React)](frontend#catwiki)

## Setup:

- Download the project
  ```bash
  git clone https://github.com/arcticlimer/catwiki
  ```

- From the project root, enter the backend directory
  ```bash
  cd catwiki
  ```

- ### Backend:
  - Enter the backend directory
    ```bash
    cd backend
    ```

  - Download the dependencies and initialize database
    ```bash
    mix setup
    ```
    > Note: This step expects that you have [PostgreSQL](https://www.postgresql.org/download/) installed and running.

  - Generate API documentation (Optional)
    ```bash
    mix compile.docs
    ```
  - Start the server
    ```bash
    mix phx.server
    ```

- ### Frontend:
  - From the project root, enter the frontend directory
    ```bash
    cd frontend
    ```
