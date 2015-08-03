:random.seed :os.timestamp

defmodule Shinchoku do

  @chars ~w(進捗 どう です か)
  @goal String.reverse(Enum.join(@chars))
  @length length(@chars)

  def doudesuka?, do: doudesuka?("")
  defp doudesuka?(s = @goal <> _), do: String.reverse(s) <> "???"
  defp doudesuka?(s), do: doudesuka?(String.reverse(Enum.at(@chars, :random.uniform(@length) - 1)) <> s)

end

s = Shinchoku.doudesuka?
IO.puts s
IO.puts Integer.to_string(String.length(s)) <> "文字で煽られました。"
