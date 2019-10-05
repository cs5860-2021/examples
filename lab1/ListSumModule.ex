defmodule ListSumModule do
  @moduledoc "A module containing a function to sum a list."

  @doc "Computes the sum of a list of integers"
  def sum([]), do: 0
  def sum([head | tail]) do
    head + sum(tail)
  end
end
