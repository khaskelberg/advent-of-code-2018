defmodule AdventOfCode2018.Day04Test do
  use ExUnit.Case

  import AdventOfCode2018.Day04

  test "part1" do
    input = """
    [1518-11-01 00:00] Guard #10 begins shift
    [1518-11-01 23:58] Guard #99 begins shift
    [1518-11-01 00:05] falls asleep
    [1518-11-01 00:25] wakes up
    [1518-11-01 00:30] falls asleep
    [1518-11-01 00:55] wakes up
    [1518-11-02 00:40] falls asleep
    [1518-11-02 00:50] wakes up
    [1518-11-03 00:05] Guard #10 begins shift
    [1518-11-03 00:24] falls asleep
    [1518-11-03 00:29] wakes up
    [1518-11-04 00:02] Guard #99 begins shift
    [1518-11-04 00:36] falls asleep
    [1518-11-04 00:46] wakes up
    [1518-11-05 00:45] falls asleep
    [1518-11-05 00:03] Guard #99 begins shift
    [1518-11-05 00:55] wakes up
    """

    input = String.split(input, "\n", trim: true)
    result = part1(input)

    assert result == 240
  end

  @tag :skip
  test "part2" do
    input = """
    [1518-11-01 00:00] Guard #10 begins shift
    [1518-11-01 23:58] Guard #99 begins shift
    [1518-11-01 00:05] falls asleep
    [1518-11-01 00:25] wakes up
    [1518-11-01 00:30] falls asleep
    [1518-11-01 00:55] wakes up
    [1518-11-02 00:40] falls asleep
    [1518-11-02 00:50] wakes up
    [1518-11-03 00:05] Guard #10 begins shift
    [1518-11-03 00:24] falls asleep
    [1518-11-03 00:29] wakes up
    [1518-11-04 00:02] Guard #99 begins shift
    [1518-11-04 00:36] falls asleep
    [1518-11-04 00:46] wakes up
    [1518-11-05 00:45] falls asleep
    [1518-11-05 00:03] Guard #99 begins shift
    [1518-11-05 00:55] wakes up
    """

    input = String.split(input, "\n", trim: true)
    result = part2(input)

    assert result == 4455
  end
end
