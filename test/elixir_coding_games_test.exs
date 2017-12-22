defmodule ElixirCodingGamesTest do
  use ExUnit.Case
  doctest ElixirCodingGames

  test "simple test case" do
    list = [1, -2, -8, 4, 5]
    assert ElixirCodingGames.solve(list) == 1
  end

  test "only negative numbers" do
    list = [-12, -5, -137]
    assert ElixirCodingGames.solve(list) == -5
  end

  test "choose the right temperature" do
    list = [42, -5, 12, 21, 5, 24]
    assert ElixirCodingGames.solve(list) == 5
  end

  test "choose the right temperature PART 2" do
    list = [42, 5, 12, 21, -5, 24]
    assert ElixirCodingGames.solve(list) == 5
  end

  test "complex test case" do
    list = [-5, -4, -2, 12, -40, 4, 2, 18, 11, 5]
    assert ElixirCodingGames.solve(list) == 2
  end

  test "no temperature" do
    list = []
    assert ElixirCodingGames.solve(list) == 0
  end
end
