defmodule Servy.Handler do
    def handle(request) do
      request 
      |> parse
      |> log 
      |> route 
      |> format_response
    end
  
    def log(conv), do: IO.inspect conv
  
    def parse(request) do
      [method, path, _] =
        request 
        |> String.split("\n") 
        |> List.first    
        |> String.split(" ")
  
      %{ method: method, 
         path: path, 
         resp_body: "",
         status: nil
       }
    end
  
    def route(conv) do
      route(conv, conv.method, conv.path)
    end

    # Pattern match instead of conditionals
  
    def route(conv, "GET", "/archery") do
      %{ conv | status: 200, resp_body: "Longbows, Lions, Tigers" }          
    end
  
    def route(conv, "GET", "/longbows") do
      %{ conv | status: 200, resp_body: "Martin, Howard Hill, Bear" }    
    end
  
    def route(conv, "GET", "/longbows/" <> id) do
      %{ conv | status: 200, resp_body: "Longbow #{id}" }
    end
  
    def route(conv, _method, path) do
      %{ conv | status: 404, resp_body: "No #{path} here!"}
    end
  
    def format_response(conv) do
      """
      HTTP/1.1 #{conv.status} #{status_reason(conv.status)}
      Content-Type: text/html
      Content-Length: #{String.length(conv.resp_body)}
  
      #{conv.resp_body}
      """
    end
  
    defp status_reason(code) do
      %{
        200 => "OK",
        201 => "Created",
        401 => "Unauthorized",
        403 => "Forbidden",
        404 => "Not Found",
        500 => "Internal Server Error"
      }[code]
    end
  
  end
  
  request = """
  GET /archery HTTP/1.1
  Host: example.com
  User-Agent: ExampleBrowser/1.0
  Accept: */*
  
  """
  
  response = Servy.Handler.handle(request)
  
  IO.puts response
  
  request = """
  GET /longbows HTTP/1.1
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
  
  request = """
  GET /longbows/1 HTTP/1.1
  Host: example.com
  User-Agent: ExampleBrowser/1.0
  Accept: */*
  
  """
  
  response = Servy.Handler.handle(request)
  
  IO.puts response
  
  
