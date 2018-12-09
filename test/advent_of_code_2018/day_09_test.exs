defmodule AdventOfCode2018.Day09Test do
  use ExUnit.Case

  import AdventOfCode2018.Day09

  test "part1" do
    assert simulate_game(9, 25) == 32
    assert simulate_game(21, 6111) == 54718
    assert simulate_game(30, 5807) == 37305
    assert simulate_game(17, 1104) == 2764
    assert simulate_game(13, 7999) == 146_373
    assert simulate_game(10, 1618) == 8317
  end
end
