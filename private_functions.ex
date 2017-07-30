# This is an example of how you write a private function in elixir.

defp get_geolocation(postal_code) do
  Store.get_geolocation(postal_code)
end


# This is a shorter one

defp format_postal_code(postal_code) when is_binary(postal_code), do: postal_code
