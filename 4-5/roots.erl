-module(roots).
-export([nth_root/2]).

nth_root(X, N) -> nth_root(X, N, X / 2.0).

nth_root(X, N, A) ->
  io:format("Current guess is: ~f~n", [A]), 
  F = powers:raise(A, N) - X,
  Fprime = N * powers:raise(A, N - 1),
  Next = A - F / Fprime,
  Change = if Next - A >= 0 -> Next - A;
    Next - A < 0 -> -(Next - A)
  end,
  Threshold = powers:raise(10, -8),
  if Change < Threshold -> Next;
    true -> nth_root(X, N, Next)
  end.
