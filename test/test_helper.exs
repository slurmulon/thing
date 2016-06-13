ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Thing.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Thing.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Thing.Repo)

