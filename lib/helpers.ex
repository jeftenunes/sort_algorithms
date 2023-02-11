defmodule SortAlgorithms.Helpers do
  def greatest_rocksongs_of_all_time do
    [
      %{:name => "Stairway to heaven", year: 1991},
      %{:name => "Bohemian Rhapsody", year: 1991},
      %{:name => "Free bird/Sweethome Alabama", year: 1976},
      %{:name => "Smoke on the water", year: 1973},
      %{:name => "Comfortable numb/Hey you", year: 1980}
    ]
  end

  def non_sorted_list(), do: [4, 1, 97, 0, -23, 11, 10]
  def sorted_list(), do: [1, 2, 3, 4, 5, 6, 7]
end
