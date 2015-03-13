-module(powers).
-export([raise/2]).

raise(_, 0) -> 1;
raise(X, N) when N < 0 ->  1.0 / raise(X, -N);
raise(X, N) -> raise(X, N, 1).

raise(_, 0, A) -> A;
raise(X, N, A) -> raise(X, N - 1, X * A).
