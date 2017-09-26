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

defmodule Account do

  def getBalance(amount, balance, :deposit) do
    amount + balance
  end

  def getBalance(amount, balance, :withdrawl) do
    amount - balance
  end

end

IO.puts Account.getBalance(4000, 1700, :deposit)
IO.puts Account.getBalance(4000, 1700, :withdrawl)

  



