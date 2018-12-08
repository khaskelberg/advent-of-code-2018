defmodule AdventOfCode2018.Day08 do
  def parse_input(args) do
    args |> String.split(" ", trim: true) |> Enum.map(&String.to_integer/1)
  end

  def process_nested_nodes([0, metadata_size | tail], acc) do
    {metadata, remains} = Enum.split(tail, metadata_size)
    {remains, acc + Enum.sum(metadata)}
  end

  def process_nested_nodes([children, metadata_size | tail], acc) do
    {tail_with_metadata, acc} =
      Enum.reduce(1..children, {tail, acc}, fn _, {remains, sum} ->
        process_nested_nodes(remains, sum)
      end)

    {metadata, remains} = Enum.split(tail_with_metadata, metadata_size)
    {remains, acc + Enum.sum(metadata)}
  end

  def part1(args) do
    args
    |> parse_input()
    |> process_nested_nodes(0)
    |> elem(1)
  end

  def process_complex([0, metadata_size | tail]) do
    {metadata, remains} = Enum.split(tail, metadata_size)
    {remains, Enum.sum(metadata)}
  end

  def process_complex([children, metadata_size | tail]) do
    {tail_with_metadata, child_map} =
      Enum.reduce(1..children, {tail, %{}}, fn number, {remains, child_map} ->
        {tail, sum} = process_complex(remains)
        new_children = Map.put(child_map, number, sum)
        {tail, new_children}
      end)

    {metadata, remains} = Enum.split(tail_with_metadata, metadata_size)

    metadata_sum =
      Enum.reduce(metadata, 0, fn x, acc ->
        if child_map[x], do: acc + child_map[x], else: acc
      end)

    {remains, metadata_sum}
  end

  def part2(args) do
    args
    |> parse_input()
    |> process_complex()
    |> elem(1)
  end
end
