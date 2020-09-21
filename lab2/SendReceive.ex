defmodule SendReceive do

  def greet() do
    receive do
      {sender, msg} -> 
	IO.puts("Received message: #{msg}")
        send(sender, {:ok, "Hello #{msg}"})
    end
  end
end
