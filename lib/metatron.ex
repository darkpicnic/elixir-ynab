defmodule Metatron do
  use Application
  @moduledoc """
  Documentation for Metatron.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Metatron.hello()
      :world

  """
  def start(_type, _args) do
    IO.puts "Starting Metatron..."
    Metatron.Supervisor.start_link()
  end
end
