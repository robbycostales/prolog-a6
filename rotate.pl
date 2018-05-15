rotate([], []).
rotate([H|T], F) :- append(T, [H], F).


rotate_n([], _, []).
rotate_n(H, 0, H).
rotate_n(L, N, F) :- length(T, N),
                    append(H, T, L),
                    append(T, H, F).

rotation(L, F) :-
    append(H, T, L),
    append(T, H, F),
    T \= [].

all_rotations(L, X) :-
              findall(F, rotation(L, F), X).

necklace(L, H) :-
              all_rotations(L, O),
              sort(O, [H|T]).
