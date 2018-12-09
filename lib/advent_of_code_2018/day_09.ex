defmodule AdventOfCode2018.Day09 do
  def simulate_game(players, rounds) do
    {game, _} =
      Enum.reduce(1..rounds, {%{}, :queue.from_list([0])}, fn
        it, {game, queue} when rem(it, 23) == 0 ->
          rotated_queue = Enum.reduce(1..6, queue, fn _, q -> rotate_counter_clockwise(q) end)
          {{:value, elem}, new_queue} = :queue.out_r(rotated_queue)
          {Map.update(game, rem(it, players), elem + it, &(&1 + elem + it)), new_queue}

        it, {game, queue} ->
          new_queue = queue |> rotate_clockwise() |> rotate_clockwise()
          {game, :queue.in_r(it, new_queue)}
      end)

    game |> Enum.max_by(fn {_, score} -> score end) |> elem(1)
  end

  def rotate_clockwise(queue) do
    {{:value, elem}, q} = :queue.out(queue)
    :queue.in(elem, q)
  end

  def rotate_counter_clockwise(queue) do
    {{:value, elem}, q} = :queue.out_r(queue)
    :queue.in_r(elem, q)
  end
end
