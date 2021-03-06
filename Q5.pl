%data
studentInfo('Allan', 40000954).
studentInfo('Rosalie', 40174964).
studentInfo('William', 40174212).

course(40000954,'Principles_of_Programming_Languages', 'COMP348'). 
course(40000954,'Numerical_Methods_in_Engineering','ENGR391').
course(40000954,'Engineering_Management_Principles_and_Economics','ENGR301').
course(40000954,'Impact_of_Technology_on_Society','ENGR392').

course(40174964,'Principles_of_Programming_Languages', 'COMP348').
course(40174964,'System_Hardware', 'SOEN228').
course(40174964,'Data_Structures_and_Algorithms', 'COMP352').
course(40174964,'Sustainable_Dev_and_Env_Stewardship','ENGR202').
course(40174964,'Technical_Writing_and_Communication', 'ENCS282').
course(40174964,'Introduction_to_Marketing', 'MARK201').

course(40174212,'Principles_of_Programming_Languages', 'COMP348').
course(40174212,'Data_Structures_and_Algorithms', 'COMP352').
course(40174212,'Sustainable_Dev_and_Env_Stewardship','ENGR202').
course(40174212,'Technical_Writing_and_Communication', 'ENCS282').
course(40174212,'Introduction_to_Microeconomics','ECON201').


%Queries
%List of courses taken by each member
?-findall(X, course(40000954, X, _), Allans_Courses), 
findall(X, course(40174964, X, _), Rosalies_Courses), 
findall(X, course(40174212, X, _), Williams_Courses),

%Team size
findall(X, studentInfo(X,_), L),
length(L, SizeOfTeam),

%Unique courses taken by the whole team
findall(X, course(_, X, _), AllCourses), 
list_to_set(AllCourses, UniqueCourses),
sort(UniqueCourses, SortedCourses),

A = 'Data_Structures_and_Algorithms',
B = 'Engineering_Management_Principles_and_Economics',
C = ['Impact_of_Technology_on_Society', 'Introduction_to_Marketing', 'Introduction_to_Microeconomics', 'Numerical_Methods_in_Engineering', 'Principles_of_Programming_Languages', 'Sustainable_Dev_and_Env_Stewardship', 'System_Hardware', 'Technical_Writing_and_Communication'].

