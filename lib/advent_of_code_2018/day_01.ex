defmodule AdventOfCode2018.Day01 do
  def part1(args) do
    Enum.reduce(args, 0, &(&2 + String.to_integer(&1)))
  end

  def part2(args) do
    args = Enum.map(args, &String.to_integer/1)
    find(args, {0, MapSet.new([0])}, args)
  end

  def find([], {acc, set}, args) do
    find(args, {acc, set}, args)
  end

  def find([head | tail], {acc, set}, args) do
    element = head + acc

    if MapSet.member?(set, element) do
      element
    else
      find(tail, {element, MapSet.put(set, element)}, args)
    end
  end
end
