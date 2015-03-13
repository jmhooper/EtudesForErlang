-module(geom).
-export([area/1]).

area({Shape, X}) -> area(Shape, X);
area({Shape, X, Y}) -> area(Shape, X, Y).

area(square, Side) when Side >= 0 -> Side * Side.

area(rectangle, Length, Width) when Length >= 0, Width >= 0 -> Length * Width;
area(triangle, Base, Height) when Base >= 0, Height >= 0 -> Base * Height / 2.0;
area(ellipse, Minor, Major) when Major >= 0, Minor >= 0 -> math:pi() * Minor * Major;
area(_, _, _) -> 0.
