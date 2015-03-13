-module(geom).
-export([area/1]).

area({Shape, X, Y}) when X >= 0, Y >= 0 ->
  case Shape of
    rectangle -> X * Y;
    triangle -> X * Y / 2.0;
    ellipse -> X * Y * math:pi();
    _ -> 0
  end.
