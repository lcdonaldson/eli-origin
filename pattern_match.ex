{:ok, value} = {:ok, "Successful!"}
IO.inspect value

list = {"hey", "there", "r", 2, "d", 2, "I hope", "c", 3, "P O", "made it safely"}
IO.inspect list

def load(filename) do
  {status, binary} = File.read(filename)

  case status do
    :ok -> :erlang.binary_to_term binary
    :error -> "that file does not exist"  
  end
end



  



