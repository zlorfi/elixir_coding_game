defmodule ElixirCodingGames do

  def solve(list) when is_list(list) do
    Enum.min_by(list, &abs(&1 - 0), fn -> 0 end)
  end

  def min_by_amount(list) when is_list(list) do
   [Enum.min(list)]
  end

  def min_by_amount(list, amount \\ 1) when is_list(list) do
  # def min_by_amount([head | tail], amount \\ 1) do
    # find the min and save it to a new list
    # for n > 1 remove found from list and run anew
    cond do
      amount == 0 ->
        min_by_amount(list)
      amount >= 1 ->
       [head | tail] = [Enum.min(list) | List.delete(list, Enum.min(list))]
       min_by_amount(tail, amount =- 1)
    end
  end
end
