defmodule BubbleSort do
  def sort([]), do: []

  def sort(list), do: do_sort(list) |> do_sort()

  defp do_sort([next | []]), do: [next]

  defp do_sort([min | [next | tl]]) when min == next,
    do: [min | sort([next | tl])]

  defp do_sort([min | [next | tl]]) when min > next,
    do: [next | sort([min | tl])]

  defp do_sort([min | [next | tl]]) when min < next,
    do: [min | sort([next | tl])]
end
