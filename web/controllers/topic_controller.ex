defmodule Discuss.TopicController do
  use Discuss.Web, :controller
  alias Discuss.Topic

  def new(conn, _params) do
    chageset = Topic.changeset(%Topic{}, %{})

    render conn, "new.html", chageset: chageset
  end

  def create(_conn, %{"topic" => topic}) do
    changeset = Topic.changeset(%Topic{}, topic)

    case Repo.insert(changeset) do
      {:ok, topic} -> IO.inspect(topic)
      {:error, changeset} -> IO.inspect(changeset)
    end
  end
end
