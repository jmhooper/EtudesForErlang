-module(dates).
-export([date_parts/1]).

date_parts(String) ->
  List = re:split(String, "/", [{return,list}]),
  [
    element(1, string:to_integer(lists:nth(1, List))),
    element(1, string:to_integer(lists:nth(2, List))),
    element(1, string:to_integer(lists:nth(3, List)))
  ].
