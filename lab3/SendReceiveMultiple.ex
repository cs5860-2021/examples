defmodule SendReceiveMultiple do

  def greet() do
    receive do
      {sender, msg} -> 
	IO.inspect(self())
        send(sender, {:ok, "Hello #{msg}"})
    end
    greet()
  end

end

pid = spawn(SendReceiveMultiple, :greet, [])

send(pid, {self(), "World"})

receive do 
  { :ok, message } -> IO.puts(message)
end

send(pid, {self(), "again"})

receive do 
  { :ok, message } -> IO.puts(message)
  after 1000 -> IO.puts("No one here...")
end



