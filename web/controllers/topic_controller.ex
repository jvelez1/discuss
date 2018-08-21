defmodule Discuss.TopicController do
  use Discuss.Web, :controller
  alias Discuss.Topic

  def new(conn, _params) do
    chageset = Topic.changeset(%Topic{}, %{})

    render conn, "new.html", chageset: chageset
  end

  def create(conn, %{"topic" => topic}) do
    IO.inspect topic
  end
end
