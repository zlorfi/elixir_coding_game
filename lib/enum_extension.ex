defmodule EnumExtension do
  @doc """
  Returns a list with the minimal element. If a counter is provided the list will display
  the x most minimal values.

  ## Examples
      iex> EnumExtension.min_by_amount([42, -5, 12, 21, 5, 24])
      [-5]
      iex> EnumExtension.min_by_amount([42, -5, 12, 21, 5, 24], 2)
      [-5, 5]
      iex> EnumExtension.min_by_amount([42, -5, 12, 21, 5, 24], 100)
      [42, -5, 12, 21, 5, 24]
      iex> EnumExtension.min_by_amount([])
      []
  """
  def min_by_amount(list, counter \\ 1) when is_list(list) do
    _min_by_amount(list, counter)
  end

  defp _min_by_amount([], _, _), do: []

  defp _min_by_amount(list, counter \\ 1, build_list \\ []) when is_list(list) do
    cond do
      length(list) <= counter ->
        list
      counter >= 1 ->
        {new_list, new_build_list} = {List.delete(list, Enum.min(list)), Enum.min(list)}
        _min_by_amount(new_list, counter - 1, [build_list] ++ [new_build_list])
      true ->
        List.flatten(build_list)
    end
  end
end
