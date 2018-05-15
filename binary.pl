

is_binary_list([]).
is_binary_list([H|T]) :-  is_binary_list(T),
                          member(H, [0, 1]).

is_binary_list_n(N, L) :-
          length(L, N),
          is_binary_list(L).


all_binary_lists_n(N, X) :-
        findall(F, is_binary_list_n(N, F), X).
