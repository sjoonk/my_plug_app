defmodule MyPlugApp do
  use Plug.Router
  
  plug :match
  plug :dispatch

  get "/" do
    send_resp conn, 200, "Elixir Plug API Demo"
  end

  get "/users/:name" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(%{:name => name}))
  end
  
  match _ do
    send_resp(conn, 404, "oops")
  end
  
  def start(_type, _args) do
    Plug.Adapters.Cowboy.http(__MODULE__, [])
  end
  
end