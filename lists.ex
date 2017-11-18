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
