-module(geom).
-export([area/3]).

area(rectangle, Length, Width) -> Length * Width;
area(triangle, Base, Height) -> Base * Height / 2.0;
area(ellipse, Minor, Major) -> math:pi() * Minor * Major.
