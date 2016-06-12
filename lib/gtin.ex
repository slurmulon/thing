@doc "Global Trade Item Number (GS1)"
defprotocol Thing.GTIN.Base do
  @doc "returns the standardized format code of the GTIN"
  def format

  def url
  def measure
  def units
end

@doc "8-digit number used predominately outside of North America"
defmodule Thing.GTIN8 do
  # defstruct
end

@doc "12-digit number used primarily in North America"
defmodule Thing.GTIN12 do
  # defstruct
end

@doc "13-digit number used predominately outside of North America"
defmodule Thing.GTIN13 do
  # defstruct
end

@doc "14-digit number used to identify trade items at various packaging levels"
defmodule Thing.GTIN14 do
  # defstruct
end

defimpl Thing.GTIN.Base, for: Thing.GTIN8 do
  def format, do: "GTIN-8"
end

defimpl Thing.GTIN.Base, for: Thing.GTIN12 do
  def format, do: "GTIN-12"
end

defimpl Thing.GTIN.Base, for: Thing.GTIN13 do
  def format, do: "GTIN-13"
end

defimpl Thing.GTIN.Base, for: Thing.GTIN14 do
  def format, do: "GTIN-14"
end

