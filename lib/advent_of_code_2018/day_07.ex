defmodule AdventOfCode2018.Day07 do
  def parse_input(args) do
    args
    |> String.split("\n", trim: true)
    |> Enum.map(fn str ->
      [<<u::utf8>>, <<v::utf8>>] =
        str
        |> String.split(" ", trim: true)
        |> Enum.reject(&(byte_size(&1) != 1))

      {u, v}
    end)
  end

  def build_graph(edges) do
    Enum.reduce(edges, %{}, fn {u, v}, graph ->
      new_graph = Map.update(graph, v, [u], &[u | &1])
      Map.update(new_graph, u, [], & &1)
    end)
  end

  def sort(graph, ans) when graph == %{} do
    ans |> Enum.reverse() |> List.to_string()
  end

  def sort(graph, ans) do
    {vertex, []} =
      Enum.min_by(graph, fn
        {vertex, []} -> vertex
        {_, _} -> '['
      end)

    new_graph =
      graph
      |> Map.delete(vertex)
      |> Enum.reduce(%{}, fn {v, edges}, acc ->
        Map.put(acc, v, edges -- [vertex])
      end)

    sort(new_graph, [vertex | ans])
  end

  def part1(args) do
    args
    |> parse_input
    |> build_graph
    |> sort('')
  end

  def part2(args) do
    args
    |> parse_input
    |> build_graph
    |> work([{0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}], 0)
  end

  def work(graph, workers, _) when graph == %{} do
    {max_t, _} = Enum.max_by(workers, fn {time, _} -> time end)
    max_t
  end

  def work(graph, workers, second) do
    stopped_nodes =
      Enum.reduce(workers, [], fn
        {time, vertex}, acc when time <= second -> [vertex | acc]
        {_, _}, acc -> acc
      end)

    graph_without_completed =
      Enum.reduce(graph, %{}, fn {v, edges}, acc ->
        Map.put(acc, v, edges -- stopped_nodes)
      end)

    {updated_graph, updated_workers} =
      Enum.reduce(workers, {graph_without_completed, []}, fn
        {time, vertex}, {acc_graph, workers} when time > second ->
          {acc_graph, [{time, vertex} | workers]}

        {time, vertex}, {acc_graph, workers} when acc_graph == %{} ->
          {acc_graph, [{time, vertex} | workers]}

        {time, vertex}, {acc_graph, workers} ->
          {node, edges} =
            Enum.min_by(acc_graph, fn
              {node, []} -> node
              {_, _} -> 1000
            end)

          if edges == [],
            do: {Map.delete(acc_graph, node), [{second + node - 4, node} | workers]},
            else: {acc_graph, [{time, vertex} | workers]}
      end)

    work(updated_graph, updated_workers, second + 1)
  end
end
