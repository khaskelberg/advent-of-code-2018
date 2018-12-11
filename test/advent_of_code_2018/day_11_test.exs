defmodule AdventOfCode2018.Day11Test do
  use ExUnit.Case

  import AdventOfCode2018.Day11

  test "part1" do
    input = 18
    result = part1(18) |> elem(0)

    assert result == {33, 45}
  end

  @tag :skip
  test "part2" do
    input = nil
    result = part2(input)

    assert result
  end
end
