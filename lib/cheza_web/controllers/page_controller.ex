defmodule ChezaWeb.PageController do
  use ChezaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
