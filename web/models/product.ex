defmodule Thing.Product do
  use Thing.Web, :model

  schema "products" do
    field :name, :string
    field :upc, :string
    field :gtin, :string

    timestamps
  end

  @required_fields ~w(name upc gtin)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
