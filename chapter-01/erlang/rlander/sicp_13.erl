-module(sicp_13).
-compile(export_all).

% 
% 1.3

my_sqr(N) ->
    N * N.

sum_of_sqrs(X, Y) ->
    my_sqr(X) + my_sqr(Y).

one_three_basic(X, Y, Z) when X =< Y, X =< Z ->
    sum_of_sqrs(Y, Z);
one_three_basic(X, Y, Z) when Y =< X, Y =< Z ->
    sum_of_sqrs(X, Z);
one_three_basic(X, Y, _) ->
    sum_of_sqrs(X, Y).


% 
% 1.3 Alternative implementation

one_three_basic2(X, Y, Z) ->
    one_three_basic2(lists:sort([X, Y, Z])).

one_three_basic2([_|T]) when length(T) =:= 2 ->
    [Y, Z] = T,
    sum_of_sqrs(Y, Z).
    

