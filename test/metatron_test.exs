defmodule MetatronTest do
  use ExUnit.Case
  doctest Metatron

  test "greets the world" do
    assert Metatron.hello() == :world
  end
end
