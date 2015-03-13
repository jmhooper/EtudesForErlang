-module(geom).
-export([area/2, area/3]).

area(square, Side) when Side >= 0 -> Side * Side.
area(rectangle, Length, Width) when Length >= 0, Width >= 0 -> Length * Width;
area(triangle, Base, Height) when Base >= 0, Height >= 0 -> Base * Height / 2.0;
area(ellipse, Minor, Major) when Major >= 0, Minor >= 0 -> math:pi() * Minor * Major.
