%rules
numOfStudent([],0).
numOfStudent([_|T],N):-numOfStudent(T, N1), N is N1+1.
