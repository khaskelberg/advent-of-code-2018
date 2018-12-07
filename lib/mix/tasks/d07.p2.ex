defmodule Mix.Tasks.D07.P2 do
  use Mix.Task

  import AdventOfCode2018.Day07

  @shortdoc "Day 07 Part 2"
  def run(_) do
    input = """
    Step J must be finished before step H can begin.
    Step N must be finished before step C can begin.
    Step G must be finished before step P can begin.
    Step M must be finished before step I can begin.
    Step H must be finished before step X can begin.
    Step B must be finished before step Y can begin.
    Step C must be finished before step L can begin.
    Step F must be finished before step I can begin.
    Step V must be finished before step O can begin.
    Step W must be finished before step Q can begin.
    Step E must be finished before step L can begin.
    Step U must be finished before step S can begin.
    Step D must be finished before step K can begin.
    Step Y must be finished before step X can begin.
    Step T must be finished before step R can begin.
    Step I must be finished before step K can begin.
    Step A must be finished before step K can begin.
    Step L must be finished before step X can begin.
    Step Q must be finished before step S can begin.
    Step S must be finished before step O can begin.
    Step P must be finished before step Z can begin.
    Step X must be finished before step R can begin.
    Step Z must be finished before step O can begin.
    Step O must be finished before step K can begin.
    Step R must be finished before step K can begin.
    Step J must be finished before step W can begin.
    Step F must be finished before step V can begin.
    Step A must be finished before step X can begin.
    Step Z must be finished before step K can begin.
    Step M must be finished before step O can begin.
    Step X must be finished before step K can begin.
    Step E must be finished before step K can begin.
    Step J must be finished before step K can begin.
    Step E must be finished before step Y can begin.
    Step B must be finished before step Q can begin.
    Step X must be finished before step Z can begin.
    Step D must be finished before step L can begin.
    Step N must be finished before step I can begin.
    Step N must be finished before step B can begin.
    Step V must be finished before step A can begin.
    Step H must be finished before step R can begin.
    Step N must be finished before step L can begin.
    Step U must be finished before step O can begin.
    Step A must be finished before step O can begin.
    Step V must be finished before step Z can begin.
    Step O must be finished before step R can begin.
    Step Q must be finished before step P can begin.
    Step F must be finished before step Q can begin.
    Step P must be finished before step R can begin.
    Step S must be finished before step X can begin.
    Step J must be finished before step E can begin.
    Step V must be finished before step P can begin.
    Step M must be finished before step D can begin.
    Step I must be finished before step S can begin.
    Step Q must be finished before step O can begin.
    Step M must be finished before step H can begin.
    Step W must be finished before step X can begin.
    Step D must be finished before step O can begin.
    Step X must be finished before step O can begin.
    Step Y must be finished before step Z can begin.
    Step F must be finished before step L can begin.
    Step V must be finished before step T can begin.
    Step V must be finished before step E can begin.
    Step Y must be finished before step A can begin.
    Step I must be finished before step R can begin.
    Step L must be finished before step O can begin.
    Step U must be finished before step X can begin.
    Step Q must be finished before step X can begin.
    Step P must be finished before step X can begin.
    Step G must be finished before step C can begin.
    Step A must be finished before step L can begin.
    Step M must be finished before step U can begin.
    Step L must be finished before step S can begin.
    Step S must be finished before step P can begin.
    Step S must be finished before step K can begin.
    Step F must be finished before step T can begin.
    Step Q must be finished before step K can begin.
    Step G must be finished before step M can begin.
    Step G must be finished before step F can begin.
    Step T must be finished before step Q can begin.
    Step F must be finished before step Z can begin.
    Step I must be finished before step Z can begin.
    Step N must be finished before step X can begin.
    Step J must be finished before step F can begin.
    Step W must be finished before step E can begin.
    Step M must be finished before step Z can begin.
    Step G must be finished before step X can begin.
    Step V must be finished before step U can begin.
    Step P must be finished before step O can begin.
    Step U must be finished before step R can begin.
    Step G must be finished before step Z can begin.
    Step F must be finished before step R can begin.
    Step L must be finished before step R can begin.
    Step F must be finished before step A can begin.
    Step I must be finished before step O can begin.
    Step D must be finished before step T can begin.
    Step U must be finished before step L can begin.
    Step B must be finished before step S can begin.
    Step S must be finished before step Z can begin.
    Step J must be finished before step N can begin.
    Step H must be finished before step T can begin.
    """

    input
    |> part2()
    |> IO.inspect(label: "Part 2 Results")
  end
end
