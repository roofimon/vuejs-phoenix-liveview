defmodule VuephxliveWeb.PageController do
  use VuephxliveWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
