defmodule SortAlgorithms.SelectionSort do
  def sort([]), do: []

  def sort(list), do: do_sort(list) |> do_sort()

  defp do_sort([]), do: []

  defp do_sort(list = [hd | tl]) do
    min = min(list)
    [min | min(tl)]
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
