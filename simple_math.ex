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

defmodule Number do
  def mul(a, b) do
    a * b
  end
end

IO.inspect Number.mul(5, 2) // should give you 10

defmodule Number do
  def div(a, b) do
    a / b
  end
end

IO.inspect Number.div(5, 2) // should give you 2.5
