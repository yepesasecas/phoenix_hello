ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixHello.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixHello.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixHello.Repo)

