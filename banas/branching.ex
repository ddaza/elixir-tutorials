defmodule M do
  def main do
    do_stuff() 
  end

  def do_stuff do

    age = 16

    if age >= 18 do
      IO.puts "Can Vote"
    else 
      IO.puts "Can't Vote"
    end

    unless age === 18 do
      IO.puts "You are not 18"
    else 
      IO.puts "You are 18"
    end

    cond do
      age>=18 -> IO.puts "Yout can vote"
      age>=16 -> IO.puts "You can drive"
      age>=14 -> IO.puts "You can wait"
      true -> IO.puts "default"
    end

    case 2 do
       1 -> IO.puts "Entered 1"
       2 -> IO.puts "Entered 2"
       _ -> IO.puts "Default"
    end

    IO.puts "Ternary : #{if age > 18, do: "Can Vote", else: "Can't Vote"}"

  end
end
