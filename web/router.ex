defmodule Thing.Router do
  use Thing.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Thing do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      resources "/products", ProductController
    end
  end
end
