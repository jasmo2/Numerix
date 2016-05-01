defmodule Numerix.DistanceTest do
  use ExUnit.Case, async: true
  use ExCheck
  alias Numerix.Distance
  alias Numerix.Correlation

  property :pearson_distance_is_the_inverse_of_its_correlation do
    for_all {xs, ys} in {[number], [number]} do
      Distance.pearson(xs, ys) == 1.0 - Correlation.pearson(xs, ys)
    end
  end

end
