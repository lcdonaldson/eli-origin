x = %{ a: "hey", b: "how's it going" }

IO.inspect x.a // hey
IO.inspect x.b // how's it going


a = Enum.map([1, 2, 3], fn(x) -> x * 2 end)
IO.inspect a // [2, 4, 6]
