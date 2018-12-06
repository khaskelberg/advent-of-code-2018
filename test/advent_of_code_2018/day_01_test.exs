defmodule AdventOfCode2018.Day01Test do
  use ExUnit.Case

  import AdventOfCode2018.Day01

  test "part1" do
    assert part1(["+1", "+1", "-2"]) == 0
    assert part1(["-1", "-2", "+3", "-4"]) == -4
    assert part1(["+1", "+2", "+3"]) == 6
  end

  test "part2" do
    assert part2(["+3", "+3", "+4", "-2", "-4"]) == 10
    assert part2(["-6", "+3", "+8", "+5", "-6"]) == 5
    assert part2(["+7", "+7", "-2", "-7", "-4"]) == 14
  end
end
