defmodule FourApp.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres
  import Ecto.Query
  def conf do
    parse_url "ecto://postgres:ts3qdf@localhost/baihuogou_union"
  end
end
