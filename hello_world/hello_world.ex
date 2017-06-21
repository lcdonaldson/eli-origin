defmodule Hello do
  def world(a, b) do
    {a, b}
  end
end

{a, b} = Hello.world("hello", "world")
IO.puts "#{a} #{b}"

# mutable data...example
array = [1,2,3]
List.delete_at(array, 0)
array
IO.inspect array
