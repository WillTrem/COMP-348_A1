% Q7
% Set facts
inv(0,1).
inv(1,0).

and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1).

% OR-gates with >2 inputs are passed through multiple 2-input OR-gates to not 
% have to declare many facts. i.e. Since there's a 5-input OR-gate, we would
% need to write 2^5 lines of facts. That being said, there's also 4-input and
% 3-input OR-gates which would mean an additional 2^4 and 2^3 lines of facts.
or(A,B,C,O) :- or(A,B,S1), or(S1,C,O).
or(A,B,C,D,O) :- or(A,B,S1), or(S1,C,S2), or(S2, D, O). 
or(A,B,C,D,E,O) :- or(A,B,S1), or(S1,C,S2), or(S2, D, S3), or(S3, E, O).

% Each circuitX rule is constructed from the 7-segment decoder schematic. They
% are called by the circuit rule, and output from A to G.
circuitA(A,B,C,D,O) :- inv(B,B1), inv(D,D1), and(B, D, BD), and(B1, D1, B1D1), or(A, B1D1, BD, C, O).
circuitB(A,B,C,D,O) :- inv(B,B1), inv(C, C1), inv(D,D1), and(C, D, CD), and(C1, D1, C1D1), or(A, B1, CD, C1D1, O).
circuitC(A,_,C,D,O) :- inv(C, C1), inv(D,D1), and(C1,D1, C1D1), or(A, D, C1D1,O).
circuitD(A,B,C,D,O) :- inv(B,B1), inv(C,C1), inv(D,D1), and(B,C1,BC1), and(BC1,D,BC1D),and(B1, C, B1C), and(C,D1, CD1), and(B1, D1, B1D1), or(A, B1D1, CD1, BC1D, B1C, O).
circuitE(_,B,C,D,O) :- inv(B,B1), inv(D,D1), and(B1,D1,B1D1), and(C,D1,CD1), or(B1D1, CD1, O).
circuitF(A,B,C,D,O) :- inv(C,C1), inv(D,D1), and(B,D1, BD1), and(C1,D1, C1D1), and(B,C1, BC1), or(A, BD1, C1D1, BC1, O).
circuitG(A,B,C,D,O) :- inv(B,B1), inv(C,C1), inv(D,D1), and(C,D1, CD1), and(B1, C, B1C), and(B,C1, BC1), or(A, CD1, B1C, BC1, O).

% Practice query would be ?- circuit(0,1,0,1,Output). Then, ; will output the values of A to G through Output.
circuit(A,B,C,D,O) :- circuitA(A,B,C,D,O); circuitB(A,B,C,D,O); circuitC(A,B,C,D,O); circuitD(A,B,C,D,O); circuitE(A,B,C,D,O); circuitF(A,B,C,D,O); circuitG(A,B,C,D,O).












