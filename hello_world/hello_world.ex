defmodule Hello do
  def world(a, b) do
    {a, b}
  end
end

{a, b} = Hello.world("hello", "world")
IO.puts "#{a} #{b}"
