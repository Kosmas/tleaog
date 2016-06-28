defmodule EncodeDecode do
  use ExUnit.Case
  use EQC.ExUnit

  property "encoding is the reverse of decoding" do
    forall bin <- binary do
      ensure bin |> Base.encode64 |> Base.decode64! == bin
    end
  end

end
