defmodule ListSumTailRecModule do
  @moduledoc "A module containing various list functions"

  @doc "Tail-recursive version of sum function. See lecture slides."
  def sum(list), do: do_sum(list,0)

  defp do_sum([],acc), do: acc
  defp do_sum([head|tail],acc) do
    do_sum(tail,acc+head)
  end

  
  @doc "Non tail-recursive version of sum function that prints stack size."
  def sum_non_tr_debug([]), do: 0
  def sum_non_tr_debug([head|tail]) do
    IO.inspect(Process.info(self(), :stack_size))

    head + sum_non_tr_debug(tail)
  end

  @doc "Tail-recursive version of sum function that prints stack size."
  def sum_tr_debug(list), do: do_sum_tr_debug(list,0)

  defp do_sum_tr_debug([],acc), do: acc
  defp do_sum_tr_debug([head|tail],acc) do
    IO.inspect(Process.info(self(), :stack_size))

    do_sum_tr_debug(tail,acc+head)
  end

end
