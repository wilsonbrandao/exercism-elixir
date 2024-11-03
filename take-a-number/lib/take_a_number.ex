defmodule TakeANumber do
  @incrise_number 1
  def start() do
    spawn(&handle_messages/0)
  end

  defp handle_messages(number \\ 0) do
    receive do
      {:report_state, sender_pid} -> send(sender_pid, number) |> handle_messages
      {:take_a_number, sender_pid} -> send(sender_pid, number + @incrise_number) |> handle_messages
      :stop -> nil
      _ -> handle_messages(number)
    end
  end
end
