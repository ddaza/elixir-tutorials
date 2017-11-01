defmodule M do
  def main do
    do_stuff()
  end

  def do_stuff do

    get_sum = fn (x, y) -> x + y end

    IO.puts "5 + 5 = #{get_sum.(5,5)}"

    get_less = &(&1 - &2)

    IO.puts "7 - 6 = #{get_less.(7,6)}"

    # pattern match on the function by arguments
    add_sum = fn
      {x,y} -> IO.puts "#{x} + #{y} = #{x + y}"
      {x,y,z} -> IO.puts "#{x} + #{y} + #{z} = #{x + y + z}"
    end

    add_sum.({1,2})
    add_sum.({1,2,3})

    IO.puts do_it()

  end


  def display_list([words_head|words_tail]) do
    IO.puts words_head
    display_list(words_tail)
  end

  def display_list([]), do: nil

  def do_it(x \\ 1, y \\ 1) do
    x + y
  end

end
