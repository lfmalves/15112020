defmodule Distributor.SieveTest do
  use ExUnit.Case
  alias Distributor.Sieve
  alias Distributor.Fixtures

  describe "Distributor.Sieve.screening/2" do
    test "that it should correctly populate the groups with fine data" do
      list_of_people = Fixtures.sample(:default)

      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 0))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 1))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 2))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 3))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 4))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 5))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 6))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 7))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 8))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 9))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 10))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 11))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 12))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 13))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 14))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 15))
    end

    test "that it should correctly populate the only male groups with non-ideal data" do
      list_of_people = Fixtures.sample(:only_males)

      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 0))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 1))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 2))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 3))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 4))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 5))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 6))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 7))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 8))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 9))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 10))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 11))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 12))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 13))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 14))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 15))
    end

    test "that it should correctly populate the only female groups with non-ideal data" do
      list_of_people = Fixtures.sample(:only_females)

      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 0))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 1))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 2))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 3))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 4))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 5))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 6))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 7))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 8))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 9))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 10))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 11))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 12))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 13))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 14))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 15))
    end

    test "that it should correctly populate the only adults groups with non-ideal data" do
      list_of_people = Fixtures.sample(:only_adults)

      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 1))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 2))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 4))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 6))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 8))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 10))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 13))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 15))
    end

    test "that it should correctly populate the only children groups with non-ideal data" do
      list_of_people = Fixtures.sample(:only_children)

      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 0))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 2))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 4))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 6))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 9))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 11))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 14))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 15))
    end

    test "that it should correctly populate the only anglo groups with non-ideal data" do
      list_of_people = Fixtures.sample(:only_anglophones)

      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 0))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 1))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 2))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 3))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 4))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 5))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 6))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 7))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 8))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 9))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 10))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 11))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 12))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 13))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 14))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 15))
    end

    test "that it should correctly populate the only franco groups with non-ideal data" do
      list_of_people = Fixtures.sample(:only_francophones)

      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 0))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 1))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 2))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 3))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 4))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 5))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 6))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 7))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 8))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 9))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 10))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 11))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 12))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 13))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 14))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 15))
    end

    test "that it should correctly populate the only nippo groups with non-ideal data" do
      list_of_people = Fixtures.sample(:only_nippophones)

      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 0))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 1))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 2))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 3))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 4))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 5))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 6))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 7))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 8))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 9))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 10))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 11))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 12))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 13))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 14))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 15))
    end

    test "that it should correctly populate the only hindo groups with non-ideal data" do
      list_of_people = Fixtures.sample(:only_hindophones)

      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 0))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 1))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 2))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 3))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 4))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 5))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 6))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 7))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 8))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 9))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 10))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 11))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 12))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 13))
      assert false == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 14))
      assert true == Enum.empty?(Enum.at(Sieve.screening(list_of_people, 26), 15))
    end
  end
end

defmodule Distributor.Fixtures do
  def sample(sample_name)

  def sample(:default) do
    [
      %{id: "1", age_group: "A", gender: "M", language: "E"},
      %{id: "2", age_group: "A", gender: "M", language: "F"},
      %{id: "3", age_group: "A", gender: "M", language: "I"},
      %{id: "4", age_group: "A", gender: "M", language: "J"},
      %{id: "5", age_group: "A", gender: "F", language: "E"},
      %{id: "6", age_group: "A", gender: "F", language: "F"},
      %{id: "7", age_group: "A", gender: "F", language: "I"},
      %{id: "8", age_group: "A", gender: "F", language: "J"},
      %{id: "9", age_group: "A", gender: "M", language: "E"},
      %{id: "10", age_group: "A", gender: "M", language: "F"},
      %{id: "11", age_group: "A", gender: "M", language: "I"},
      %{id: "12", age_group: "A", gender: "M", language: "J"},
      %{id: "13", age_group: "A", gender: "F", language: "E"},
      %{id: "14", age_group: "A", gender: "F", language: "F"},
      %{id: "15", age_group: "A", gender: "F", language: "I"},
      %{id: "16", age_group: "A", gender: "F", language: "J"},
      %{id: "17", age_group: "C", gender: "M", language: "E"},
      %{id: "18", age_group: "C", gender: "M", language: "F"},
      %{id: "19", age_group: "C", gender: "M", language: "I"},
      %{id: "20", age_group: "C", gender: "M", language: "J"},
      %{id: "21", age_group: "C", gender: "F", language: "E"},
      %{id: "22", age_group: "C", gender: "F", language: "F"},
      %{id: "23", age_group: "C", gender: "F", language: "I"},
      %{id: "24", age_group: "C", gender: "F", language: "J"},
      %{id: "25", age_group: "C", gender: "M", language: "E"},
      %{id: "26", age_group: "C", gender: "F", language: "F"}
    ]
  end

  def sample(:only_males) do
    [
      %{id: "1", age_group: "A", gender: "M", language: "E"},
      %{id: "2", age_group: "A", gender: "M", language: "F"},
      %{id: "3", age_group: "A", gender: "M", language: "I"},
      %{id: "4", age_group: "A", gender: "M", language: "J"},
      %{id: "5", age_group: "A", gender: "M", language: "E"},
      %{id: "6", age_group: "A", gender: "M", language: "F"},
      %{id: "7", age_group: "A", gender: "M", language: "I"},
      %{id: "8", age_group: "A", gender: "M", language: "J"},
      %{id: "9", age_group: "A", gender: "M", language: "E"},
      %{id: "10", age_group: "A", gender: "M", language: "F"},
      %{id: "11", age_group: "A", gender: "M", language: "I"},
      %{id: "12", age_group: "A", gender: "M", language: "J"},
      %{id: "13", age_group: "A", gender: "M", language: "E"},
      %{id: "14", age_group: "A", gender: "M", language: "F"},
      %{id: "15", age_group: "A", gender: "M", language: "I"},
      %{id: "16", age_group: "A", gender: "M", language: "J"},
      %{id: "17", age_group: "C", gender: "M", language: "E"},
      %{id: "18", age_group: "C", gender: "M", language: "F"},
      %{id: "19", age_group: "C", gender: "M", language: "I"},
      %{id: "20", age_group: "C", gender: "M", language: "J"},
      %{id: "21", age_group: "C", gender: "M", language: "E"},
      %{id: "22", age_group: "C", gender: "M", language: "F"},
      %{id: "23", age_group: "C", gender: "M", language: "I"},
      %{id: "24", age_group: "C", gender: "M", language: "J"},
      %{id: "25", age_group: "C", gender: "M", language: "E"},
      %{id: "26", age_group: "C", gender: "M", language: "F"}
    ]
  end

  def sample(:only_females) do
    [
      %{id: "1", age_group: "A", gender: "F", language: "E"},
      %{id: "2", age_group: "A", gender: "F", language: "F"},
      %{id: "3", age_group: "A", gender: "F", language: "I"},
      %{id: "4", age_group: "A", gender: "F", language: "J"},
      %{id: "5", age_group: "A", gender: "F", language: "E"},
      %{id: "6", age_group: "A", gender: "F", language: "F"},
      %{id: "7", age_group: "A", gender: "F", language: "I"},
      %{id: "8", age_group: "A", gender: "F", language: "J"},
      %{id: "9", age_group: "A", gender: "F", language: "E"},
      %{id: "10", age_group: "A", gender: "F", language: "F"},
      %{id: "11", age_group: "A", gender: "F", language: "I"},
      %{id: "12", age_group: "A", gender: "F", language: "J"},
      %{id: "13", age_group: "A", gender: "F", language: "E"},
      %{id: "14", age_group: "A", gender: "F", language: "F"},
      %{id: "15", age_group: "A", gender: "F", language: "I"},
      %{id: "16", age_group: "A", gender: "F", language: "J"},
      %{id: "17", age_group: "C", gender: "F", language: "E"},
      %{id: "18", age_group: "C", gender: "F", language: "F"},
      %{id: "19", age_group: "C", gender: "F", language: "I"},
      %{id: "20", age_group: "C", gender: "F", language: "J"},
      %{id: "21", age_group: "C", gender: "F", language: "E"},
      %{id: "22", age_group: "C", gender: "F", language: "F"},
      %{id: "23", age_group: "C", gender: "F", language: "I"},
      %{id: "24", age_group: "C", gender: "F", language: "J"},
      %{id: "25", age_group: "C", gender: "F", language: "E"},
      %{id: "26", age_group: "C", gender: "F", language: "F"}
    ]
  end

  def sample(:only_adults) do
    [
      %{id: "1", age_group: "A", gender: "M", language: "E"},
      %{id: "2", age_group: "A", gender: "F", language: "F"},
      %{id: "3", age_group: "A", gender: "M", language: "I"},
      %{id: "4", age_group: "A", gender: "F", language: "J"},
      %{id: "5", age_group: "A", gender: "M", language: "E"},
      %{id: "6", age_group: "A", gender: "F", language: "F"},
      %{id: "7", age_group: "A", gender: "M", language: "I"},
      %{id: "8", age_group: "A", gender: "F", language: "J"},
      %{id: "9", age_group: "A", gender: "M", language: "E"},
      %{id: "10", age_group: "A", gender: "F", language: "F"},
      %{id: "11", age_group: "A", gender: "M", language: "I"},
      %{id: "12", age_group: "A", gender: "F", language: "J"},
      %{id: "13", age_group: "A", gender: "M", language: "E"},
      %{id: "14", age_group: "A", gender: "F", language: "F"},
      %{id: "15", age_group: "A", gender: "M", language: "I"},
      %{id: "16", age_group: "A", gender: "F", language: "J"},
      %{id: "17", age_group: "A", gender: "M", language: "E"},
      %{id: "18", age_group: "A", gender: "F", language: "F"},
      %{id: "19", age_group: "A", gender: "M", language: "I"},
      %{id: "20", age_group: "A", gender: "F", language: "J"},
      %{id: "21", age_group: "A", gender: "M", language: "E"},
      %{id: "22", age_group: "A", gender: "F", language: "F"},
      %{id: "23", age_group: "A", gender: "M", language: "I"},
      %{id: "24", age_group: "A", gender: "F", language: "J"},
      %{id: "25", age_group: "A", gender: "M", language: "E"},
      %{id: "26", age_group: "A", gender: "F", language: "F"}
    ]
  end

  def sample(:only_children) do
    [
      %{id: "1", age_group: "C", gender: "M", language: "E"},
      %{id: "2", age_group: "C", gender: "F", language: "F"},
      %{id: "3", age_group: "C", gender: "M", language: "I"},
      %{id: "4", age_group: "C", gender: "F", language: "J"},
      %{id: "5", age_group: "C", gender: "M", language: "E"},
      %{id: "6", age_group: "C", gender: "F", language: "F"},
      %{id: "7", age_group: "C", gender: "M", language: "I"},
      %{id: "8", age_group: "C", gender: "F", language: "J"},
      %{id: "9", age_group: "C", gender: "M", language: "E"},
      %{id: "10", age_group: "C", gender: "F", language: "F"},
      %{id: "11", age_group: "C", gender: "M", language: "I"},
      %{id: "12", age_group: "C", gender: "F", language: "J"},
      %{id: "13", age_group: "C", gender: "M", language: "E"},
      %{id: "14", age_group: "C", gender: "F", language: "F"},
      %{id: "15", age_group: "C", gender: "M", language: "I"},
      %{id: "16", age_group: "C", gender: "F", language: "J"},
      %{id: "17", age_group: "C", gender: "M", language: "E"},
      %{id: "18", age_group: "C", gender: "F", language: "F"},
      %{id: "19", age_group: "C", gender: "M", language: "I"},
      %{id: "20", age_group: "C", gender: "F", language: "J"},
      %{id: "21", age_group: "C", gender: "M", language: "E"},
      %{id: "22", age_group: "C", gender: "F", language: "F"},
      %{id: "23", age_group: "C", gender: "M", language: "I"},
      %{id: "24", age_group: "C", gender: "F", language: "J"},
      %{id: "25", age_group: "C", gender: "M", language: "E"},
      %{id: "26", age_group: "C", gender: "F", language: "F"}
    ]
  end

  def sample(:only_anglophones) do
    [
      %{id: "1", age_group: "A", gender: "M", language: "E"},
      %{id: "2", age_group: "A", gender: "F", language: "E"},
      %{id: "3", age_group: "A", gender: "M", language: "E"},
      %{id: "4", age_group: "A", gender: "F", language: "E"},
      %{id: "5", age_group: "A", gender: "M", language: "E"},
      %{id: "6", age_group: "A", gender: "F", language: "E"},
      %{id: "7", age_group: "A", gender: "M", language: "E"},
      %{id: "8", age_group: "A", gender: "F", language: "E"},
      %{id: "9", age_group: "A", gender: "M", language: "E"},
      %{id: "10", age_group: "A", gender: "F", language: "E"},
      %{id: "11", age_group: "A", gender: "M", language: "E"},
      %{id: "12", age_group: "A", gender: "F", language: "E"},
      %{id: "13", age_group: "A", gender: "M", language: "E"},
      %{id: "14", age_group: "A", gender: "F", language: "E"},
      %{id: "15", age_group: "A", gender: "M", language: "E"},
      %{id: "16", age_group: "A", gender: "F", language: "E"},
      %{id: "17", age_group: "C", gender: "M", language: "E"},
      %{id: "18", age_group: "C", gender: "F", language: "E"},
      %{id: "19", age_group: "C", gender: "M", language: "E"},
      %{id: "20", age_group: "C", gender: "F", language: "E"},
      %{id: "21", age_group: "C", gender: "M", language: "E"},
      %{id: "22", age_group: "C", gender: "F", language: "E"},
      %{id: "23", age_group: "C", gender: "M", language: "E"},
      %{id: "24", age_group: "C", gender: "F", language: "E"},
      %{id: "25", age_group: "C", gender: "M", language: "E"},
      %{id: "26", age_group: "C", gender: "F", language: "E"}
    ]
  end

  def sample(:only_francophones) do
    [
      %{id: "1", age_group: "A", gender: "M", language: "F"},
      %{id: "2", age_group: "A", gender: "F", language: "F"},
      %{id: "3", age_group: "A", gender: "M", language: "F"},
      %{id: "4", age_group: "A", gender: "F", language: "F"},
      %{id: "5", age_group: "A", gender: "M", language: "F"},
      %{id: "6", age_group: "A", gender: "F", language: "F"},
      %{id: "7", age_group: "A", gender: "M", language: "F"},
      %{id: "8", age_group: "A", gender: "F", language: "F"},
      %{id: "9", age_group: "A", gender: "M", language: "F"},
      %{id: "10", age_group: "A", gender: "F", language: "F"},
      %{id: "11", age_group: "A", gender: "M", language: "F"},
      %{id: "12", age_group: "A", gender: "F", language: "F"},
      %{id: "13", age_group: "A", gender: "M", language: "F"},
      %{id: "14", age_group: "A", gender: "F", language: "F"},
      %{id: "15", age_group: "A", gender: "M", language: "F"},
      %{id: "16", age_group: "A", gender: "F", language: "F"},
      %{id: "17", age_group: "C", gender: "M", language: "F"},
      %{id: "18", age_group: "C", gender: "F", language: "F"},
      %{id: "19", age_group: "C", gender: "M", language: "F"},
      %{id: "20", age_group: "C", gender: "F", language: "F"},
      %{id: "21", age_group: "C", gender: "M", language: "F"},
      %{id: "22", age_group: "C", gender: "F", language: "F"},
      %{id: "23", age_group: "C", gender: "M", language: "F"},
      %{id: "24", age_group: "C", gender: "F", language: "F"},
      %{id: "25", age_group: "C", gender: "M", language: "F"},
      %{id: "26", age_group: "C", gender: "F", language: "F"}
    ]
  end

  def sample(:only_nippophones) do
    [
      %{id: "1", age_group: "A", gender: "M", language: "J"},
      %{id: "2", age_group: "A", gender: "F", language: "J"},
      %{id: "3", age_group: "A", gender: "M", language: "J"},
      %{id: "4", age_group: "A", gender: "F", language: "J"},
      %{id: "5", age_group: "A", gender: "M", language: "J"},
      %{id: "6", age_group: "A", gender: "F", language: "J"},
      %{id: "7", age_group: "A", gender: "M", language: "J"},
      %{id: "8", age_group: "A", gender: "F", language: "J"},
      %{id: "9", age_group: "A", gender: "M", language: "J"},
      %{id: "10", age_group: "A", gender: "F", language: "J"},
      %{id: "11", age_group: "A", gender: "M", language: "J"},
      %{id: "12", age_group: "A", gender: "F", language: "J"},
      %{id: "13", age_group: "A", gender: "M", language: "J"},
      %{id: "14", age_group: "A", gender: "F", language: "J"},
      %{id: "15", age_group: "A", gender: "M", language: "J"},
      %{id: "16", age_group: "A", gender: "F", language: "J"},
      %{id: "17", age_group: "C", gender: "M", language: "J"},
      %{id: "18", age_group: "C", gender: "F", language: "J"},
      %{id: "19", age_group: "C", gender: "M", language: "J"},
      %{id: "20", age_group: "C", gender: "F", language: "J"},
      %{id: "21", age_group: "C", gender: "M", language: "J"},
      %{id: "22", age_group: "C", gender: "F", language: "J"},
      %{id: "23", age_group: "C", gender: "M", language: "J"},
      %{id: "24", age_group: "C", gender: "F", language: "J"},
      %{id: "25", age_group: "C", gender: "M", language: "J"},
      %{id: "26", age_group: "C", gender: "F", language: "J"}
    ]
  end

  def sample(:only_hindophones) do
    [
      %{id: "1", age_group: "A", gender: "M", language: "I"},
      %{id: "2", age_group: "A", gender: "F", language: "I"},
      %{id: "3", age_group: "A", gender: "M", language: "I"},
      %{id: "4", age_group: "A", gender: "F", language: "I"},
      %{id: "5", age_group: "A", gender: "M", language: "I"},
      %{id: "6", age_group: "A", gender: "F", language: "I"},
      %{id: "7", age_group: "A", gender: "M", language: "I"},
      %{id: "8", age_group: "A", gender: "F", language: "I"},
      %{id: "9", age_group: "A", gender: "M", language: "I"},
      %{id: "10", age_group: "A", gender: "F", language: "I"},
      %{id: "11", age_group: "A", gender: "M", language: "I"},
      %{id: "12", age_group: "A", gender: "F", language: "I"},
      %{id: "13", age_group: "A", gender: "M", language: "I"},
      %{id: "14", age_group: "A", gender: "F", language: "I"},
      %{id: "15", age_group: "A", gender: "M", language: "I"},
      %{id: "16", age_group: "A", gender: "F", language: "I"},
      %{id: "17", age_group: "C", gender: "M", language: "I"},
      %{id: "18", age_group: "C", gender: "F", language: "I"},
      %{id: "19", age_group: "C", gender: "M", language: "I"},
      %{id: "20", age_group: "C", gender: "F", language: "I"},
      %{id: "21", age_group: "C", gender: "M", language: "I"},
      %{id: "22", age_group: "C", gender: "F", language: "I"},
      %{id: "23", age_group: "C", gender: "M", language: "I"},
      %{id: "24", age_group: "C", gender: "F", language: "I"},
      %{id: "25", age_group: "C", gender: "M", language: "I"},
      %{id: "26", age_group: "C", gender: "F", language: "I"}
    ]
  end
end
