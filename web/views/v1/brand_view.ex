defmodule Thing.V1.BrandView do
  use Thing.Web, :view

  def render("index.json", %{brands: brands}) do
    %{data: render_many(brands, Thing.V1.BrandView, "brand.json")}
  end

  def render("show.json", %{brand: brand}) do
    %{data: render_one(brand, Thing.V1.BrandView, "brand.json")}
  end

  def render("brand.json", %{brand: brand}) do
    %{id: brand.id,
      name: brand.name,
      bsin: brand.bsin,
      type: brand.type,
      link: brand.link}
  end
end
