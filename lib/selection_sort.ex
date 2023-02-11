defmodule SortAlgorithms.SelectionSort do
  def sort([]), do: []

  def sort(list), do: do_sort(list) |> do_sort()

  defp do_sort(list) do
    do_selection(list, [])
  end

  defp do_selection([], acc), do: acc
  defp do_selection([min | []], acc), do: acc ++ [min]

  defp do_selection(list, acc) do
    min = min(list)
    do_selection(:lists.delete(min, list), acc ++ [min])
  end

  defp min([next | []]), do: [next]

  defp min([min | [next | []]]) do
    less(min, next)
  end

  defp min([min | [next | tl]]) do
    min([less(min, next) | tl])
  end

  defp min(el), do: [el]

  defp less(el1, el2) do
    if el1 <= el2 do
      el1
    else
      el2
    end
  end
end

# defmodule SortAlgorithms.SelectionSort do
#   def sort([]), do: []

#   def sort(list), do: do_sort(list) |> do_sort()

#   defp do_sort([next | []]), do: [next]

#   defp do_sort([min | [next | tl]]) when min == next,
#     do: [min | sort([next | tl])]

#   defp do_sort([min | [next | tl]]) when min > next,
#     do: [next | sort([min | tl])]

#   defp do_sort([min | [next | tl]]) when min < next,
#     do: [min | sort([next | tl])]
# end
