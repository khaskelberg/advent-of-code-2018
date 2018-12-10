defmodule AdventOfCode2018.Day10 do
  def parse_input(args) do
    args
    |> String.split("\n", trim: true)
    |> Enum.map(fn point ->
      [x, y, vel_x, vel_y] =
        point |> String.split(",", trim: true) |> Enum.map(&String.to_integer/1)

      {{x, y}, {vel_x, vel_y}}
    end)
  end

  def simulate(points, second) do
    if is_min_box?(points, 70) do
      {points, second}
    else
      simulate(forward_time(points), second + 1)
    end
  end

  def is_min_box?(points, box_size) do
    {{min_x, max_x}, {min_y, max_y}} = min_coordinates(points)
    max_x - min_x < box_size && max_y - min_y < box_size
  end

  def min_coordinates(points) do
    {{{min_x, _}, _}, {{max_x, _}, _}} = Enum.min_max_by(points, fn {{x, _}, _} -> x end)
    {{{_, min_y}, _}, {{_, max_y}, _}} = Enum.min_max_by(points, fn {{_, y}, _} -> y end)
    {{min_x, max_x}, {min_y, max_y}}
  end

  def forward_time(points) do
    Enum.map(points, fn {{x, y}, {vel_x, vel_y}} ->
      {{x + vel_x, y + vel_y}, {vel_x, vel_y}}
    end)
  end

  def print(coord_map) do
    {{min_x, max_x}, {min_y, max_y}} = min_coordinates(coord_map)

    Enum.reduce(min_y..max_y, "", fn y, res ->
      line =
        Enum.reduce(min_x..max_x, "", fn x, line ->
          case coord_map[{x, y}] do
            nil -> line <> "."
            _ -> line <> "#"
          end
        end)

      IO.puts(line)
      res <> "\n" <> line
    end)
  end

  def transform_to_map(points) do
    points
    |> elem(0)
    |> Enum.reduce(%{}, fn {{x, y}, {_, _}}, acc ->
      Map.put(acc, {x, y}, 1)
    end)
  end

  def part1(args) do
    args
    |> parse_input
    |> simulate(0)
    |> transform_to_map
    |> print
  end
end
