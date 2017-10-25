defmodule TeelogWeb.PageController do
  use TeelogWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
