studentInfo('Allan', 40000954, [course('Principles_of_Programming_Languages', 'COMP348'), course('Numerical_Methods_in_Engineering','ENGR391'), course('Engineering_Management_Principles_and_Economics','ENGR301'), course('Impact_of_Technology_on_Society','ENGR392')]).
studentInfo('Rosalie', 40174964, [course('Principles_of_Programming_Languages', 'COMP348'), course('System_Hardware', 'SOEN228'), course('Data_Structures_and_Algorithms', 'COMP352'),course('Sustainable_Dev_and_Env_Stewardship','ENGR202'),course('Technical_Writing_and_Communication', 'ENCS282'), course('Introduction_to_Marketing', 'MARK201')]).
studentInfo('William', 40174212, [course('Principles_of_Programming_Languages', 'COMP348'), course('Data_Structures_and_Algorithms', 'COMP352'), course('Sustainable_Dev_and_Env_Stewardship','ENGR202'),course('Technical_Writing_and_Communication', 'ENCS282'), course('Introduction_to_Microeconomics','ECON201')]).


numOfStudent([],0).
numOfStudent([_|T],N):-numOfStudent(T, N1), N is N1+1.
