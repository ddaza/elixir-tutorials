defmodule M do
  def main do
    do_stuff()
  end

  def do_stuff do
    list1 = [1,2,3]
    list2 = [4,5,6]

    list3 = list1 ++ list2

    list4 = list3 -- list1

    IO.puts 6 in list4

    [head | tail] = list3

    IO.puts "Head : #{head}"
    # IO.puts "Tail : #{tail}"

    IO.write "Tail : "
    IO.inspect tail

    IO.inspect [97, 98], char_lists: :as_lists

    Enum.each tail, fn item ->
      IO.puts item
    end

    words = ["Random", "Words", "in a", "list"]

    Enum.each words, fn word ->
      IO.puts word
    end

    display_list(words) # recursive function

    IO.puts "---delete---"
    # IO.puts
    display_list(List.delete(words, "Random")) # deletes matching item in list

    IO.puts "---delete_at---"
    display_list(List.delete_at(words, 1)) # deletes item at index

    IO.puts "--inster_at---"
    display_list(List.insert_at(words, 4 ,"Yeah"))

    IO.puts "first -> #{List.first(words)}"
    IO.puts "last -> #{List.last(words)}"

    # lists can have key value pairs
    my_stats = [name: "Dereck", height: 6.25]

    IO.inspect my_stats
  end


  def display_list([words_head|words_tail]) do
    IO.puts "-> #{words_head}"
    display_list(words_tail)
  end

  def display_list([]), do: nil

end
