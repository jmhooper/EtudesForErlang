-module(ask_area).
-export([area/0]).

area() ->
  Answer = io:get_line("R)ectangle, T)riangle, or E)llipse > "),
  Shape = char_to_shape(lists:nth(1, Answer)),
  Dimensions = case Shape of
    rectangle -> get_dimensions("width", "height");
    triangle -> get_dimensions("base", "height");
    ellipse -> get_dimensions("major axis", "minor axis");
    _ -> {error, undefined}
  end,
  geom:area({Shape, element(1, Dimensions), element(2, Dimensions)}).

char_to_shape(Char) ->
  case Char of
    $r -> rectangle;
    $R -> rectangle;
    $t -> triangle;
    $T -> triangle;
    $e -> ellipse;
    $E -> ellipse;
    _ -> unknown
  end.

get_number(Prompt) ->
  Answer = io:get_line("Enter " ++ Prompt ++ " > "),
  case string:to_float(Answer) of
    {error, _} -> element(1, string:to_integer(Answer));
    {_, _} -> element(1, string:to_float(Answer))
  end.

get_dimensions(X, Y) ->
  {get_number(X), get_number(Y)}.
