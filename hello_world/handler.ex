defmodule Handler do

  def handle(request) do
  end
  
  def parse(request) do
    # Convert String into a map
    
    conv = %{ method: "GET", path: "/profile", response_body: "" }
  end
  
  def route(conv) do
    # New map that has response body filled.
    
    conv = %{ method: "GET", path: "/profile", response_body: "name, age, gender" }
  end

end
