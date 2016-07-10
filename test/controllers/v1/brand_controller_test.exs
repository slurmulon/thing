defmodule Thing.V1.BrandControllerTest do
  use Thing.ConnCase

  alias Thing.Brand
  @valid_attrs %{bsin: "some content", link: "some content", name: "some content", type: "some content"}
  @invalid_attrs %{}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, v1_brand_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    brand = Repo.insert! %Brand{}
    conn = get conn, v1_brand_path(conn, :show, brand)
    assert json_response(conn, 200)["data"] == %{"id" => brand.id,
      "name" => brand.name,
      "bsin" => brand.bsin,
      "type" => brand.type,
      "link" => brand.link}
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, v1_brand_path(conn, :show, -1)
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post conn, v1_brand_path(conn, :create), brand: @valid_attrs
    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(Brand, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, v1_brand_path(conn, :create), brand: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    brand = Repo.insert! %Brand{}
    conn = put conn, v1_brand_path(conn, :update, brand), brand: @valid_attrs
    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(Brand, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    brand = Repo.insert! %Brand{}
    conn = put conn, v1_brand_path(conn, :update, brand), brand: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    brand = Repo.insert! %Brand{}
    conn = delete conn, v1_brand_path(conn, :delete, brand)
    assert response(conn, 204)
    refute Repo.get(Brand, brand.id)
  end
end
