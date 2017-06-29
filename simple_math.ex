defmodule Number do
  def add(a, b) do
    a + b
  end
end

IO.inspect Number.add(5, 2) // should give you 7

defmodule Number do
  def sub(a, b) do
    a - b
  end
end

IO.inspect Number.sub(5, 2) // should give you 3
