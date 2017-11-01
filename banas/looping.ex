defmodule M do
  def main do
    do_stuff()
  end

  def do_stuff do

    IO.puts "Sum: #{sum([1,2,3])}"

    # since elixir everything is immutable recursion
    # is used for loops in some cases
    loop(5,1)
  end

  def sum([]), do: 0
  def sum([h|t]), do: h + sum(t)


  def loop(0,_),  do: nil

  def loop(max, min) do
    if max < min do
      loop(0, min)
    else
      IO.puts "Num: #{max}"
      loop(max - 1, min)
    end
  end

  def display_list([words_head|words_tail]) do
    IO.puts words_head
    display_list(words_tail)
  end

  def display_list([]), do: nil

end
