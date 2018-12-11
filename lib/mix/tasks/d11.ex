defmodule Mix.Tasks.D11 do
  use Mix.Task

  import AdventOfCode2018.Day11

  @shortdoc "Day 11"
  def run(_) do
    input = 7689

    input
    |> part1()
    |> IO.inspect(label: "Results")
  end
end
