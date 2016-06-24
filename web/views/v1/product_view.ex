defmodule Thing.V1.ProductView do
  use Thing.Web, :view

  def render("index.json", %{products: products}) do
    %{data: render_many(products, Thing.V1.ProductView, "product.json")}
  end

  def render("show.json", %{product: product}) do
    %{data: render_one(product, Thing.V1.ProductView, "product.json")}
  end

  def render("product.json", %{product: product}) do
    %{id: product.id,
      name: product.name,
      upc: product.upc,
      gtin: product.gtin}
  end
end
