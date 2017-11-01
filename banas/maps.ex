defmodule M do
  def main do
    do_stuff()
  end

  def do_stuff do

    capitals = %{
      "Alabama" =>  "Montogomery",
      "Alaska" => "Juneau",
      "Arizona" => "Phoenix"
    }

    IO.puts "Capital of Alaska is #{capitals["Alaska"]}"

    capitals2 = %{
      alabama:   "Montogomery",
      alaska: "Juneau",
      arizona: "Phoenix"
    }

    IO.puts "Capital of Arizona is #{capitals2.arizona}"

    capitals3 = Dict.put_new capitals, "Arkansas", "Little Rock"
  end


  def display_list([words_head|words_tail]) do
    IO.puts words_head
    display_list(words_tail)
  end

  def display_list([]), do: nil

end
