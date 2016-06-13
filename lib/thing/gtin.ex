defprotocol Thing.GTIN.Base do
  @moduledoc """
  Global Trade Item Number (GS1)
  """

  #@doc "returns the standardized format code of the GTIN"
  #def format

  #def url
  #def measure
  #def units
end

defmodule Thing.GTIN8 do
  @moduledoc """
  8-digit number used predominately outside of North America
  """

  # defstruct
end

defmodule Thing.GTIN12 do
  @moduledoc """
  12-digit number used primarily in North America
  """

  # defstruct
end

defmodule Thing.GTIN13 do
  @moduledoc """
  13-digit number used predominately outside of North America
  """

  # defstruct
end

defmodule Thing.GTIN14 do
  @moduledoc """
  14-digit number used to identify trade items at various packaging levels
  """

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

