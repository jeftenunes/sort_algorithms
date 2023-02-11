defmodule SortAlgorithms do
  @moduledoc """
  Practicing sort algorithms
  end
  """
  import IO, only: [puts: 1]
  alias SortAlgorithms.Helpers, as: Helpers
  alias SortAlgorithms.SelectionSort, as: SelectionSort

  def test do
    Helpers.greatest_rocksongs_of_all_time()
  end

  def selection_sort_non_sorted_list() do
    puts("Selection sort in a non-sorted list")
    SelectionSort.sort(Helpers.non_sorted_list())
  end

  def selection_sort_sorted_list() do
    puts("Selection sort in a sorted list")
    SelectionSort.sort(Helpers.sorted_list())
  end
end
