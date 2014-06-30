Dynamo.under_test(FourApp.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule FourApp.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
