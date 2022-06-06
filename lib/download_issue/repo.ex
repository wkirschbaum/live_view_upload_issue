defmodule DownloadIssue.Repo do
  use Ecto.Repo,
    otp_app: :download_issue,
    adapter: Ecto.Adapters.Postgres
end
