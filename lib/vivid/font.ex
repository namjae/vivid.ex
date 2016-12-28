defmodule Vivid.Font do
  def rowmans do
    [
      " ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".",
      "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">",
      "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N",
      "O", "P", "Q", "R", "S", "T", "U", "V", "X", "Y", "Z", "[", "\\", "]", "↑", "-",
      "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o",
      "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "{", "|", "}", "~"
    ]
    |> Enum.zip(font("rowmans"))
    |> Enum.into(%{})
  end

  defp font(name) do
    name
    |> Vivid.Hershey.definitions
    |> Enum.to_list
  end
end