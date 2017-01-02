defimpl Vivid.Rasterize, for: Vivid.Point do
  alias Vivid.{Point, Bounds}

  @moduledoc """
  Rasterize a single point. i.e. do nothing.
  """

  @doc """
  Rasterize an individual point.

  ## Example

      iex> Vivid.Rasterize.rasterize(Vivid.Point.init(3,3), Vivid.Bounds.init(0, 0, 3, 3)) |> Enum.to_list
      [%Vivid.Point{x: 3, y: 3}]
  """
  def rasterize(%Point{x: x, y: y}=point, %Bounds{min: %Point{x: x0, y: y0}, max: %Point{x: x1, y: y1}}) when x >= x0 and x <= x1 and y >= y0 and y <= y1 do
    MapSet.new([point])
  end

  def rasterize(_point, _bounds), do: MapSet.new
end