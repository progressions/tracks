defmodule Tracks do
  @moduledoc """
  Documentation for Tracks.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Tracks.hello
      :world

  """
  def hello do
    :world
  end

  # A Track is made up of Points. Points indicate places where a track connects to
  # other tracks and a train may need to choose which path to take.
  #
  # A Point might look like this:
  #
  # {:id, :zero, :one, :two}
  #
  # The first element of the tuple is the identifier of this point.
  #
  # The second element is the "zero" connection. The third is the "one" connection,
  # and the fourth is the "two" connection.
  #
  # A simple network with two loops might look like this:
  #
  # {1, {1, 1}, {1, 0}, {2, 2}}
  # {2, {2, 1}, {2, 0}, {1, 1}}
  #
  # If a train enters the point through the "zero" connection, it can choose whether
  # to exit by the "one" or the "two" connection.
  #
  # If it enters through the "one" or "two" connection, it must exit by the "zero".
  #
  #
  # A Track is an array of points.
  #

  def traverse(track, point_id, exit_index), do: traverse(track, point_id, exit_index, MapSet.new([point_id]))

  def traverse(track, point_id, exit_index, visited_points) do
    {point, _} = List.keytake(track, point_id, 0)

    point
  end
end
