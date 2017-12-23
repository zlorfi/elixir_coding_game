defmodule ElixirCodingGames do
  def solve(list) when is_list(list) do
    Enum.min_by(list, &abs(&1 - 0), fn -> 0 end)
  end
end

