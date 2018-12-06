defmodule AdventOfCode2018.Day05 do
  def part1(args) do
    args
    |> String.to_charlist()
    |> delete_repeated_parts
    |> length
  end

  def delete_repeated_parts(string) do
    Enum.reduce(string, [], fn
      char, [prev_char | rest] when abs(prev_char - char) == 32 -> rest
      char, proccesed -> [char | proccesed]
    end)
  end

  def part2(args) do
    input = String.to_charlist(args)

    Enum.map(?a..?z, fn char ->
      input
      |> Enum.reject(fn x ->
        x == char || x == char - 32
      end)
      |> delete_repeated_parts
      |> length
    end)
    |> Enum.min()
  end
end
