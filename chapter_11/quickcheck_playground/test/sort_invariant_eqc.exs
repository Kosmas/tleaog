defmodule SortInvariant do
  use ExUnit.Case
  use EQC.ExUnit

  def is_sorted([]), do: true

  def is_sorted(list) do
    list
    |> Enum.zip(tl(list))
    |> Enum.all?(fn {x, y} -> x <= y end)
  end

  property "sorting works" do
    forall 1  <- list(int) do
      ensure 1 |> Enum.sort |> is_sorted == true
    end
  end

end
