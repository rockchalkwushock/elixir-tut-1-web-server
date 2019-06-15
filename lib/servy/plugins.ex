defmodule Servy.Plugins do
  alias Servy.Conv

  def track(%Conv{status: 404, path: path}) do
    IO.puts("Warning: #{path} is on the loose!")
  end

  def track(%Conv{} = conv), do: conv

  def rewrite_path(%Conv{path: "/wildlife"} = conv) do
    %{conv | path: "/wildthings"}
  end

  def rewrite_path(%Conv{} = conv), do: conv
  def log(conv), do: IO.inspect(conv)
end
