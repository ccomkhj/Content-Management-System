defmodule Hello.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field :title, :string
    timestamps()
  end

  @doc false
  #iex.bat -S mix     (start without server phx.server)
  #remember % means map
  #iex(1)> topic = %Discuss.Topic{}
  #iex(3)> attrs = %{title: "great js"}
  #iex(7)> Discuss.Topic.changeset(topic, attrs)
  def changeset(topic, attrs \\ %{}) do
    topic
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end

end
