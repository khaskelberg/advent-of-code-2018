defmodule AdventOfCode2018.Day03 do
  def part1(args) do
    args
    |> parse_input()
    |> get_all_squares()
    |> Enum.count(fn {_coord, val} -> val > 1 end)
  end

  def parse_input(args) do
    args
    |> String.split("\n", trim: true)
    |> Enum.map(&parse_claim/1)
  end

  def get_all_squares(args) do
    Enum.reduce(args, Map.new(), fn {_id, {x, y}, {width, height}}, res_map ->
      rect = for i <- x..(x + width - 1), j <- y..(y + height - 1), into: %{}, do: {{i, j}, 1}
      Map.merge(res_map, rect, fn _k, v1, v2 -> v1 + v2 end)
    end)
  end

  def parse_claim(str) do
    parsed = String.split(str, ~r/[@ ,:x#]/, trim: true)
    [id, x, y, width, height] = Enum.map(parsed, &String.to_integer/1)
    {id, {x, y}, {width, height}}
  end

  def subset?(map1, map2) do
    keys = Map.keys(map1)

    map2
    |> Map.take(keys)
    |> Map.equal?(map1)
  end

  def part2(args) do
    input = parse_input(args)

    unique_squares =
      input
      |> get_all_squares()
      |> Enum.filter(fn {_coord, val} -> val == 1 end)
      |> Map.new()

    Enum.find(input, fn {_id, {x, y}, {width, height}} ->
      rect = for i <- x..(x + width - 1), j <- y..(y + height - 1), into: %{}, do: {{i, j}, 1}
      subset?(rect, unique_squares)
    end)
  end
end
