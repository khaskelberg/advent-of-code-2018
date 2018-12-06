defmodule AdventOfCode2018.Day04 do
  def part1(args) do
    {guard, minutes_list} =
      args
      |> get_guards_and_minutes
      |> Enum.max_by(fn {_guard, list_of_minutes} -> length(list_of_minutes) end)

    {res_minute, _} = find_most_repeated_minute(minutes_list)
    guard * res_minute
  end

  def find_most_repeated_minute(minutes_list) do
    minutes_list
    |> Enum.reduce(%{}, fn x, acc ->
      Map.update(acc, x, 1, &(&1 + 1))
    end)
    |> Enum.max_by(fn {_, count} -> count end)
  end

  def get_guards_and_minutes(args) do
    args
    |> Enum.map(fn log ->
      [time_string, action] = String.split(log, ~r{\[|\] }, trim: true)
      time = NaiveDateTime.from_iso8601!(time_string <> ":00")
      {time, action}
    end)
    |> Enum.sort(fn {time1, _}, {time2, _} ->
      case NaiveDateTime.compare(time1, time2) do
        :lt -> true
        _ -> false
      end
    end)
    |> parse_log(0, [], %{})
  end

  def parse_log(
        [{time_sleep, "falls asleep"}, {time_wakeup, "wakes up"} | tail],
        guard,
        list_of_minutes,
        res
      ) do
    new_minutes = list_of_minutes ++ Enum.to_list(time_sleep.minute..(time_wakeup.minute - 1))
    parse_log(tail, guard, new_minutes, res)
  end

  def parse_log([{_, guard_string} | tail], guard, list_of_minutes, res) do
    res = Map.update(res, guard, list_of_minutes, &(&1 ++ list_of_minutes))
    new_guard = get_guard_from_string(guard_string)
    parse_log(tail, new_guard, [], res)
  end

  def parse_log([], guard, list_of_minutes, res) do
    Map.update(res, guard, list_of_minutes, &(&1 ++ list_of_minutes))
  end

  def get_guard_from_string(guard_string) do
    [guard] = Regex.run(~r[\d+], guard_string)
    String.to_integer(guard)
  end

  def part2(args) do
    {guard, minute, _} =
      args
      |> get_guards_and_minutes
      |> Enum.map(fn
        {guard, []} ->
          {guard, 0, 0}

        {guard, minutes_list} ->
          {minute, count} = find_most_repeated_minute(minutes_list)
          {guard, minute, count}
      end)
      |> Enum.max_by(fn {_, _, count} -> count end)

    guard * minute
  end
end
