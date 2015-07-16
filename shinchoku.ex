:random.seed :os.timestamp

defmodule Shinchoku do

  @chars ["進捗", "どう", "です", "か"]
  @goal Enum.join(@chars)
  @length length(@chars)

  def doudesuka(s \\ "") do
    st = s <> Enum.at(@chars, :random.uniform(@length) - 1)
    if String.ends_with?(st, @goal), do: st <> "???", else: doudesuka(st)
  end

end

s = Shinchoku.doudesuka
IO.puts s
IO.puts Integer.to_string(String.length(s)) <> "文字で煽られました。"
