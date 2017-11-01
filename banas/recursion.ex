defmodule M do
  def main do
    do_stuff()
  end

  def do_stuff do
    IO.puts "Factorial of 4: #{factorial(4)}"
  end

  def display_list([words_head|words_tail]) do
    IO.puts words_head
    display_list(words_tail)
  end

  def display_list([]), do: nil

  def factorial(num) do
    if num <= 1 do
      1
    else
      result = num * factorial(num - 1)
      result
    end
  end

end
