defmodule AdventOfCode2018.Day02 do
  def part1(args) do
    {two, three} =
      Enum.reduce(args, {0, 0}, fn x, {doubles, triples} ->
        {has_two, has_three} = count_repeats(x)
        {doubles + has_two, triples + has_three}
      end)

    two * three
  end

  # def count_repeats(str) do
  #   charlist = String.to_charlist(str)

  #   res_map =
  #     Enum.group_by(charlist, fn letter ->
  #       Enum.count(charlist, &(&1 == letter))
  #     end)

  #   has_two = if res_map[2] == nil, do: 0, else: 1
  #   has_three = if res_map[3] == nil, do: 0, else: 1

  #   {has_two, has_three}
  # end

  def count_repeats(str) do
    str
    |> String.to_charlist()
    |> Enum.reduce(%{}, fn char, map ->
      Map.update(map, char, 1, &(&1 + 1))
    end)
    |> Enum.reduce({0, 0}, fn
      {_codepoint, 2}, {_two, three} -> {1, three}
      {_codepoint, 3}, {two, _three} -> {two, 1}
      _, acc -> acc
    end)
  end

  # def part2(args) do
  #   Enum.find_value(args, fn x ->
  #     Enum.find_value(args, fn y ->
  #       case String.myers_difference(x, y) do
  #         [eq: p1, del: <<_::utf8>>, ins: <<_::utf8>>, eq: p2] -> p1 <> p2
  #         _ -> false
  #       end
  #     end)
  #   end)
  # end

  def part2(args) do
    args
    |> Enum.map(&String.to_charlist/1)
    |> closest
  end

  def closest([head | tail]) do
    Enum.find_value(tail, &one_char_difference(&1, head)) || closest(tail)
  end

  def one_char_difference(string1, string2) do
    one_char_difference_string(string1, string2, [], 0)
  end

  def one_char_difference_string([head | tail1], [head | tail2], common, difference_count) do
    one_char_difference_string(tail1, tail2, [head | common], difference_count)
  end

  def one_char_difference_string([_ | tail1], [_ | tail2], common, difference_count) do
    one_char_difference_string(tail1, tail2, common, difference_count + 1)
  end

  def one_char_difference_string([], [], common, 1) do
    common
    |> Enum.reverse()
    |> List.to_string()
  end

  def one_char_difference_string([], [], _, _) do
    nil
  end
end
