defmodule Thing.BrandTest do
  use Thing.ModelCase

  alias Thing.Brand

  @valid_attrs %{bsin: "some content", link: "some content", name: "some content", type: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Brand.changeset(%Brand{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Brand.changeset(%Brand{}, @invalid_attrs)
    refute changeset.valid?
  end
end
