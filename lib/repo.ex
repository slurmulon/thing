defmodule Thing.Repo do
  use Ecto.Repo, otp_app: :thing, adapter: Ecto.Adapter.Postgres
end

#defprotocol Thinkg.Base.Repo do
#  def store()
#end

defmodule Thing.CSV.Repo do

end

defmodule Thing.DB.Repo do

end
