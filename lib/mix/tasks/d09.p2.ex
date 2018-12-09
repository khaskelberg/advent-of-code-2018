defmodule Mix.Tasks.D09.P2 do
  use Mix.Task

  import AdventOfCode2018.Day09

  @shortdoc "Day 09 Part 2"
  def run(_) do
    simulate_game(468, 71843 * 100)
    |> IO.inspect(label: "Part 2 Results")
  end
end
