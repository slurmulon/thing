defmodule Thingy do
  @moduledoc """
  Represents a product, service or trade item that is available on the market
  """

  use Ecto.Schema

  schema "thing" do
    field :upc
    field :name
  end

  @doc "Provides a list of merchants (and their URLs) where the product can be purchased"
  def merchants do
  end

  @doc "Provides a list of URLs where the product is on sale"
  def specials do
  end
end

defmodule Thingies do
  def all do
  end

  def count do
  end

  def by_name do
  end

  def by_upc do
  end
end

