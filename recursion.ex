defmodule Account do
  def printList([head | tail]) do
    IO.puts head
    printList(tail)
  end
  
  def printList([]) do
  end
end

IO.puts Account.printList(["elixir", "javascript", "ruby"])
