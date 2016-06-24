defmodule Thing.ProductTest do
  use Thing.ModelCase

  alias Thing.Product

  @valid_attrs %{gtin: "some content", name: "some content", upc: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Product.changeset(%Product{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Product.changeset(%Product{}, @invalid_attrs)
    refute changeset.valid?
  end
end
