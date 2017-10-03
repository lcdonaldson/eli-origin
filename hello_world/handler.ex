defmodule Handler do

  def handle(request) do
    request
    |> parse
    |> route
    |> responseFormat
  end
  
  def parse(request) do
    # Convert String into a map
    
    conv = %{ method: "GET", path: "/profile", response_body: "" }
  end
  
  def route(conv) do
    # New map that has response body filled.
    
    conv = %{ method: "GET", path: "/profile", response_body: "name, age, gender" }
  end
  
  def responseFormat (conv) do
    # Response string created
  
    """
    HTTP/1.1 200 OK
    Content-Type: text/html
    Content-Length: 30
    
    name, age, gender
    """
  end

end

request = """
    GET /Profile HTTP/1.1
    Host: fireflytechlabs.com
    User-Agent: ExampleBrowser/1.0
    Accept: */*
    """
    
response = Handler.handle(request)

IO.puts response
