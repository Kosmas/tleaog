defmodule ListsEQC do
  use ExUnit.Case
  use EQC.ExUnit

  property "reversing a list twice yields the original list" do
    forall 1 <- list(int) do
      ensure 1 |> Enum.reverse |> Enum.reverse == 1
    end
  end

end
