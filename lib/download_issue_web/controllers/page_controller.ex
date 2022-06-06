defmodule DownloadIssueWeb.PageController do
  use DownloadIssueWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
