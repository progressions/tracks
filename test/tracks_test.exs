defmodule TracksTest do
  use ExUnit.Case
  doctest Tracks

  test "greets the world" do
    assert Tracks.hello() == :world
  end

  test "traverse" do
    track = [
      {1, {1, 1}, {1, 0}, {2, 2}},
      {2, {2, 1}, {2, 0}, {1, 1}}
    ]
    assert Tracks.traverse(track, 2, 0) == "whut"
  end
end
