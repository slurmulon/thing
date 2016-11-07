defmodule Morph do
  alias Experimental.Flow, as: Flow

  # TODO: alll the mappings
  @mappings = %{
    "BSIN" => "bsin",
    "BRAND" => "brand",
    "BRAND_NM" => "brand_name",
    "BRAND_TYPE_CD" => "brand_type_code", # :manufacturer, :retailer
    "BRAND_LINK" => "brand_url",
    "Group" => "group",
    "OWNER_CODE" => "owner_pod_code",
    "OWNER_NM" => "owner_name",
    "OWNER_LINK" => "owner_url",
    "OWNER_WIKI_EN" => "owner_wiki_en",
    "BRAND_TYPE_NM" => "brand_type_name",

    "GPC_CD" => "gpc_code",
    "GPC_NM" => "gpc_name",
    "GPC_LEVEL" => "gpc_level",
    "SOURCE" => "release",
    "GPC_C_CD" => "gpc_class_code",
    "GPC_F_CD" => "gpc_family_code",
    "GPC_S_CD" => "gpc_segment_code",

    "COUNTRY_ISO_CD" => "country_iso_code",
    "PREFIX_NM" => "office"
  }

  # TODO: utilize https://hexdocs.pm/gen_stage/Experimental.Flow.html#partition/2-options
  def from_sql(source) do
    File.stream!(source, :line)
    |> Flow.from_enumerable()
    |> Flow.partition()
    |> Flow.reduce(%{}, fn line, sql ->
      Enum.flat_map_reduce(@mappings, sql, fn({from, to}) ->
        String.replace(line, from, to)
      end)
    |> Enum.sort()
    |> Enum.join("")
  end

end


