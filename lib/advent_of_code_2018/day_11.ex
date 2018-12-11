defmodule AdventOfCode2018.Day11 do
  def generate_grid(serial_number) do
    for x <- 1..300, y <- 1..300, into: %{} do
      {{x, y}, power_level({x, y}, serial_number)}
    end
  end

  def power_level({x, y}, serial_number) do
    partial = ((x + 10) * y + serial_number) * (x + 10)
    rem(div(partial, 100), 10) - 5
  end

  def partial_sums(grid) do
    Enum.reduce(1..300, %{}, fn x, acc ->
      Enum.reduce(1..300, acc, fn y, sums ->
        part_sum =
          grid[{x, y}] + Map.get(sums, {x, y - 1}, 0) + Map.get(sums, {x - 1, y}, 0) -
            Map.get(sums, {x - 1, y - 1}, 0)

        Map.put(sums, {x, y}, part_sum)
      end)
    end)
  end

  def generate_power_map(partial_sum_map, size) do
    for x <- size..300,
        y <- size..300,
        into: %{} do
      total_power =
        Map.get(partial_sum_map, {x, y}) + Map.get(partial_sum_map, {x - size, y - size}, 0) -
          Map.get(partial_sum_map, {x - size, y}, 0) - Map.get(partial_sum_map, {x, y - size}, 0)

      {{x - size + 1, y - size + 1}, total_power}
    end
  end

  def find_square(partial_sum_map) do
    1..300
    |> Task.async_stream(
      fn size ->
        power_map = generate_power_map(partial_sum_map, size)
        {{x, y}, power} = Enum.max_by(power_map, fn {_, power} -> power end)
        {x, y, size, power}
      end,
      ordered: false
    )
    |> Enum.max_by(fn {:ok, {_, _, _, power}} -> power end)
  end

  def part1(serial_number) do
    serial_number
    |> generate_grid()
    |> partial_sums()
    |> find_square()
  end
end
