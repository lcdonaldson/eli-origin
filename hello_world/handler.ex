defmodule Handler do

  def handle(request) do
    request
    |> parse
    |> log
    |> route
    |> responseFormat
  end
  
  def log(conv), do: IO.inspect conv
  
  def parse(request) do
    # Convert String into a map
    firstLine = 
    [method, path, _] = 
      request 
        |> String.split("\n") 
        |> List.first
        |> String.split(" ")
    %{ method: "GET", path: "/profile", response_body: " " }
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
    Content-Length: #{String.length(conv.resp_body)}

    #{conv.resp_body}
    """
  end
  
end

request = """
GET /wildthings HTTP/1.1
Host: example.com
User-Agent: ExampleBrowser/1.0
Accept: */*

"""

response = Servy.Handler.handle(request)

IO.puts response

request = """
GET /bears HTTP/1.1
Host: example.com
User-Agent: ExampleBrowser/1.0
Accept: */*

"""

response = Servy.Handler.handle(request)

IO.puts response

request = """
GET /bigfoot HTTP/1.1
Host: example.com
User-Agent: ExampleBrowser/1.0
Accept: */*

"""

response = Servy.Handler.handle(request)

IO.puts response
