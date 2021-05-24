% Q9
lucas_sequence(1,[2]).
lucas_sequence(2,[2,1]).
lucas_sequence(N,L) :- N > 1, lucas_sequence2(N, LR, 2, [1,2]), reverse(LR, L).

lucas_sequence2(N,L,N,L).
lucas_sequence2(N1,L1,N0,[B,A|T]):- N1 > N0, N2 is N0+1, C is A+B, lucas_sequence2(N1,L1,N2,[C,B,A|T]).