defmodule M do
  def main do
    do_stuff()
  end

  def do_stuff do

    [lenght, width] = [20, 30]

    IO.puts "Width: #{width}"

    [_, [_,  a]] = [20, [30, 40]]

    IO.puts "Get num: #{a}"

  end


  def display_list([words_head|words_tail]) do
    IO.puts words_head
    display_list(words_tail)
  end

  def display_list([]), do: nil

end
