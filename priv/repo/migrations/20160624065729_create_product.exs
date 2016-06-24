defmodule Thing.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :upc, :string
      add :gtin, :string

      timestamps
    end

  end
end
