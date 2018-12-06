defmodule AdventOfCode2018.Day06 do
  def parse_coordinates(lines) do
    coordinates =
      lines
      |> String.split("\n", trim: true)
      |> Enum.map(fn coord ->
        coord = String.split(coord, ", ", trim: true)
        [x, y] = Enum.map(coord, &String.to_integer/1)
        {x, y}
      end)

    Enum.zip(1..length(coordinates), coordinates)
  end

  def find_borders(coordinates) do
    {{_, {x_min, _}}, {_, {x_max, _}}} = Enum.min_max_by(coordinates, fn {_, {x, _}} -> x end)
    {{_, {_, y_min}}, {_, {_, y_max}}} = Enum.min_max_by(coordinates, fn {_, {_, y}} -> y end)
    {{x_min, x_max}, {y_min, y_max}}
  end

  def find_closest({loc_x, loc_y}, coordinates) do
    {_, id} =
      Enum.reduce(coordinates, {1_234_567, :eq}, fn {id, {x, y}}, {min_dist, min_id} ->
        dist = abs(x - loc_x) + abs(y - loc_y)

        cond do
          dist == min_dist -> {min_dist, :eq}
          dist > min_dist -> {min_dist, min_id}
          dist < min_dist -> {dist, id}
        end
      end)

    id
  end

  def find_infinities({x_min, x_max}, {y_min, y_max}, coordinates) do
    vert_borders =
      for i <- [x_min - 1, x_max + 1], j <- y_min..y_max, do: find_closest({i, j}, coordinates)

    horz_borders =
      for i <- [y_min - 1, y_max + 1], j <- x_min..x_max, do: find_closest({i, j}, coordinates)

    Enum.uniq(vert_borders ++ horz_borders)
  end

  def part1(args) do
    coordinates = parse_coordinates(args)
    {{x_min, x_max}, {y_min, y_max}} = find_borders(coordinates)

    list_of_ids =
      for i <- x_min..x_max,
          j <- y_min..y_max,
          do: find_closest({i, j}, coordinates)

    list_of_rejects = [:eq | find_infinities({x_min, x_max}, {y_min, y_max}, coordinates)]

    {_, area} =
      list_of_ids
      |> Enum.reject(fn x -> x in list_of_rejects end)
      |> Enum.reduce(%{}, fn x, acc ->
        Map.update(acc, x, 1, &(&1 + 1))
      end)
      |> Enum.max_by(fn {_, count} -> count end)

    area
  end

  def find_dist_sum({loc_x, loc_y}, coordinates) do
    Enum.reduce(coordinates, 0, fn {_, {x, y}}, sum ->
      dist = abs(x - loc_x) + abs(y - loc_y)
      sum + dist
    end)
  end

  def part2(args, len) do
    coordinates = parse_coordinates(args)
    {{x_min, x_max}, {y_min, y_max}} = find_borders(coordinates)

    list_of_sums =
      for i <- x_min..x_max,
          j <- y_min..y_max,
          do: find_dist_sum({i, j}, coordinates)

    Enum.count(list_of_sums, &(&1 < len))
  end
end
