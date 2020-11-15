defmodule DistributorTest do
  use ExUnit.Case
  doctest Distributor

  test "greets the world" do
    assert Distributor.hello() == :world
  end
end
