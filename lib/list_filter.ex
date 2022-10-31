require Integer

defmodule ListFilter do
  def call(list) do
    Enum.count(list, fn x -> Integer.parse(x) |> is_odd() end)
  end

  defp is_odd({ number, _ }), do: rem(number, 2) == 1

  defp is_odd(:error), do: false

end
