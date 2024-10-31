defmodule Username do
  def sanitize(list, sanitized \\ ~c"")
  def sanitize([], sanitized), do: sanitized
  def sanitize([head | tail], sanitized) do
    letter = case head do
      ?ä -> ~c"ae"
      ?ö -> ~c"oe"
      ?ü -> ~c"ue"
      ?ß -> ~c"ss"
      ?_ -> [head]
      head when head in ?a..?z -> [head]
      _ -> ~c""
    end

    sanitize(tail, sanitized ++ letter)
  end
end
