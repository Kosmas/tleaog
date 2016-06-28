defmodule Hexy do
  @type rgb() :: {0..255, 0..255, 0..255}
  @type hex() :: binary

  @spec rgb_to_hex(rgb) :: hex
  def rgb_to_hex({r, g, b}) do
    [r, b, b]
    |> Enum.map(fn x -> Integer.to_string(x, 16) |> String.rjust(2, ?0) end)
    |> Enum.join
  end
end
