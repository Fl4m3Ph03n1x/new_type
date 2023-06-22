defmodule NewTypeTest do
  use ExUnit.Case
  doctest NewType

  test "greets the world" do
    assert NewType.hello() == :world
  end
end
