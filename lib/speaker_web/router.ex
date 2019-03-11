defmodule SpeakerWeb.Router do
  use SpeakerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SpeakerWeb do
    pipe_through :api
  end
end
