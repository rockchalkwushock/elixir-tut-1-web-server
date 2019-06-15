defmodule Servy.Wildthings do
  alias Servy.Bear

  def list_bears do
    [
      %Bear{id: 1, name: "Teddy", type: "Brown", hibernating: true},
      %Bear{id: 1, name: "Smokey", type: "Brown"},
      %Bear{id: 1, name: "Paddington", type: "Black"},
      %Bear{id: 1, name: "Scarface", type: "Polar", hibernating: true},
      %Bear{id: 1, name: "Snow", type: "Grizzly"},
      %Bear{id: 1, name: "Brutus", type: "Black", hibernating: true},
      %Bear{id: 1, name: "Rosie", type: "Panda"},
      %Bear{id: 1, name: "Roscoe", type: "Polar", hibernating: true}
    ]
  end

  def get_bear(id) when is_integer(id) do
    Enum.find(list_bears(), fn b -> b.id == id end)
  end

  def get_bear(id) when is_binary(id) do
    id |> String.to_integer() |> get_bear
  end
end
