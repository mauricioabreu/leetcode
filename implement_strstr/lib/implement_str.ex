defmodule ImplementStrStr do
  def str_str(haystack, needle) do
    str_str(haystack, needle, String.length(needle), 0)
  end

  def str_str(haystack, needle, nlen, index) do
    hlen = String.length(haystack)
    cond do
      hlen < nlen ->
        -1
      next_window(haystack, nlen) == needle ->
        index
      true ->
        str_str(string_tail(haystack), needle, nlen, index + 1)
    end
  end

  def string_tail(haystack) do
    haystack
    |> String.slice(1, String.length(haystack))
  end

  def next_window(haystack, needle_len) do
    haystack
    |> String.slice(0, needle_len)
  end
end
