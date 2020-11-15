defmodule Distributor.Sieve do
  @moduledoc """
  Main [and only non-test human-made] module, arguebly to be used as a dep: has all the logics to filter raw data into 16 groups, according to age, gender and language.
  """

  @doc """
  This one function takes a raw-data list and possibly a sampling number, and outputs the data sorted by groups.
  The input must be a list of maps (as seen on the contract).
  """
  @spec screening(list(map()), integer()) :: list()
  def screening(list_of_people, sampling \\ 100) do
    [
      ponderate_minor(m_c_e(list_of_people), sampling),
      ponderate_minor(m_c_f(list_of_people), sampling),
      ponderate_minor(m_c_i(list_of_people), sampling),
      ponderate_minor(m_c_j(list_of_people), sampling),
      ponderate_major(m_a_e(list_of_people), sampling),
      ponderate_major(m_a_f(list_of_people), sampling),
      ponderate_major(m_a_i(list_of_people), sampling),
      ponderate_major(m_a_j(list_of_people), sampling),
      ponderate_minor(f_c_e(list_of_people), sampling),
      ponderate_minor(f_c_f(list_of_people), sampling),
      ponderate_minor(f_c_i(list_of_people), sampling),
      ponderate_minor(f_c_j(list_of_people), sampling),
      ponderate_major(f_a_e(list_of_people), sampling),
      ponderate_major(f_a_f(list_of_people), sampling),
      ponderate_major(f_a_i(list_of_people), sampling),
      ponderate_major(f_a_j(list_of_people), sampling)
    ]
  end

  @spec male(list()) :: list()
  defp male(list_of_people) do
    Enum.filter(list_of_people, fn x -> x.gender == "M" end)
  end

  @spec female(list()) :: list()
  defp female(list_of_people) do
    Enum.filter(list_of_people, fn x -> x.gender == "F" end)
  end

  @spec adult(list()) :: list()
  defp adult(list_of_people) do
    Enum.filter(list_of_people, fn x -> x.age_group == "A" end)
  end

  @spec young(list()) :: list()
  defp young(list_of_people) do
    Enum.filter(list_of_people, fn x -> x.age_group == "C" end)
  end

  @spec anglo(list()) :: list()
  defp anglo(list_of_people) do
    Enum.filter(list_of_people, fn x -> x.language == "E" end)
  end

  @spec franco(list()) :: list()
  defp franco(list_of_people) do
    Enum.filter(list_of_people, fn x -> x.language == "F" end)
  end

  @spec indo(list()) :: list()
  defp indo(list_of_people) do
    Enum.filter(list_of_people, fn x -> x.language == "I" end)
  end

  @spec nippo(list()) :: list()
  defp nippo(list_of_people) do
    Enum.filter(list_of_people, fn x -> x.language == "J" end)
  end

  @spec m_c_e(list()) :: list()
  defp m_c_e(list_of_people) do
    list_of_people |> male() |> young() |> anglo()
  end

  @spec m_c_f(list()) :: list()
  defp m_c_f(list_of_people) do
    list_of_people |> male() |> young() |> franco()
  end

  @spec m_c_i(list()) :: list()
  defp m_c_i(list_of_people) do
    list_of_people |> male() |> young() |> indo()
  end

  @spec m_c_j(list()) :: list()
  defp m_c_j(list_of_people) do
    list_of_people |> male() |> young() |> nippo()
  end

  @spec m_a_e(list()) :: list()
  defp m_a_e(list_of_people) do
    list_of_people |> male() |> adult() |> anglo()
  end

  @spec m_a_f(list()) :: list()
  defp m_a_f(list_of_people) do
    list_of_people |> male() |> adult() |> franco()
  end

  @spec m_a_i(list()) :: list()
  defp m_a_i(list_of_people) do
    list_of_people |> male() |> adult() |> indo()
  end

  @spec m_a_j(list()) :: list()
  defp m_a_j(list_of_people) do
    list_of_people |> male() |> adult() |> nippo()
  end

  @spec f_c_e(list()) :: list()
  defp f_c_e(list_of_people) do
    list_of_people |> female() |> young() |> anglo()
  end

  @spec f_c_f(list()) :: list()
  defp f_c_f(list_of_people) do
    list_of_people |> female() |> young() |> franco()
  end

  @spec f_c_i(list()) :: list()
  defp f_c_i(list_of_people) do
    list_of_people |> female() |> young() |> indo()
  end

  @spec f_c_j(list()) :: list()
  defp f_c_j(list_of_people) do
    list_of_people |> female() |> young() |> nippo()
  end

  @spec f_a_e(list()) :: list()
  defp f_a_e(list_of_people) do
    list_of_people |> female() |> adult() |> anglo()
  end

  @spec f_a_f(list()) :: list()
  defp f_a_f(list_of_people) do
    list_of_people |> female() |> adult() |> franco()
  end

  @spec f_a_i(list()) :: list()
  defp f_a_i(list_of_people) do
    list_of_people |> female() |> adult() |> indo()
  end

  @spec f_a_j(list()) :: list()
  defp f_a_j(list_of_people) do
    list_of_people |> female() |> adult() |> nippo()
  end

  @spec ponderate_major(list(), integer()) :: list()
  defp ponderate_major(list_of_people, sampling) do
    threshold = round(7.5 * sampling)
    result = Enum.slice(list_of_people, 0..(threshold - 1))

    # if Enum.count(result) < threshold do
    #   IO.puts(
    #     IO.ANSI.format([
    #       :yellow_background,
    #       :black,
    #       "WARN: one of your major lists has a less-than-ideal number of elements!"
    #     ])
    #   )
    # end

    result
  end

  @spec ponderate_minor(list(), integer()) :: list()
  defp ponderate_minor(list_of_people, sampling) do
    threshold = round(5 * sampling)
    result = Enum.slice(list_of_people, 0..(threshold - 1))

    # if Enum.count(result) < threshold do
    #   IO.puts(
    #     IO.ANSI.format([
    #       :yellow_background,
    #       :black,
    #       "WARN: one of your minor lists has a less-than-ideal number of elements!"
    #     ])
    #   )
    # end

    result
  end
end
