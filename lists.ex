defmodule Fish do 
  def info do
    # families = ["Bass", "Trout", "Catfish", "Sunfish"]
    species = ["Stiper", "Rainbow", "Blue", "Bluegill"]
    
    for specie <- species do
      "#{specie} "
    end
  end
end

lists = [:hello, "world", 42]

for list <- lists do
  IO.inspect list
end

# head and tail in lists. hd is the first item in the list. tl is everything after the first item.

x = hd [5, "Banana", :ok]
IO.inspect x
# gives you [5]

y = tl [5, "Banana", :ok]
IO.inspect y
# gives you ["Banana", :ok]
