defmodule Test do
  def printList(['a' | 'b', 'c'])
    IO.puts 'a'
    printList(['b', 'c'])
  end
  
  def printList([])
  end
end
