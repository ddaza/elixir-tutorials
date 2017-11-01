defmodule M do

  def main do
    # name = IO.gets("What is your name? ") |> String.trim
    # IO.puts "Hello #{name}"

    data_stuff()
  end

  def data_stuff do
    my_int = 123

    IO.puts "Integer #{is_integer(my_int)}"

    my_str = "My sentence"
    IO.puts "Length : #{String.length(my_str)}"

    # string concatenation
    longer_str = my_str <> " " <> "is longer"
    # IO.puts "Equal : #{"Egg" === "egg"}"
    IO.puts "this string is longer: #{longer_str}"

    IO.puts "My ? #{String.contains?(my_str, "My")}"

    IO.puts "First : #{String.first(my_str)}"

    IO.puts "Index 4 : #{String.at(my_str, 4)}"

    IO.puts "Substring : #{String.slice(my_str, 3, 8)}"

    IO.inspect String.split(longer_str, " ")

    IO.puts String.reverse(longer_str)

    IO.puts String.upcase(longer_str)

    IO.puts String.downcase(longer_str)

    IO.puts String.capitalize(longer_str)

    4 * 10 |> IO.puts
  end
end
