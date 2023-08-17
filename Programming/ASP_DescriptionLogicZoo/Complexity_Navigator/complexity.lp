%This file expresses the concept about complexity hierarchies

%Predicates that are defined in this file:
%   complexity_class (complexity)
%       -> identifier for the complexity classes (e.g. p_time, p_space, undecidable)
%   smaller_complexity (complexity1, complexity2)
%       -> complexity1 is a subset/ less powerful complexity class than complexity2 (partial ordering)
%   is_complete (logic, complexity)
%       -> SAT is complete for this logic in the specified complexity class

% important warning: complexity class undecidable only contains reasoning tasks that are explicitly undecidable

% complexities
complexity_class(p_time;
  n_p_time;
  co_n_p_time;
  p_space;
  exp_time;
  n_exp_time;
  exp_exp_time;
  n_exp_exp_time;
  decidable;
  undecidable).

% relationship between classes
smaller_complexity(p_time, n_p_time).
smaller_complexity(p_time, co_n_p_time).
smaller_complexity(p_time , p_space).
smaller_complexity(n_p_time, p_space).
smaller_complexity(co_n_p_time, p_space).
smaller_complexity(p_space , exp_time).
smaller_complexity(exp_time, n_exp_time).
smaller_complexity(n_exp_time, exp_exp_time).
smaller_complexity(exp_exp_time, n_exp_exp_time).
smaller_complexity(C, decidable) :- complexity_class(C), C != undecidable.

%undecidable is treated as incomparable (contains only the problems that are known to be indecidable)
-smaller_complexity(X, undecidable) :- complexity_class(X), X != undecidable.
-smaller_complexity(undecidable, X) :- complexity_class(X), X != undecidable.

% a logic cannot be undecidable and have a decision complexity
:- has_complexity(L, undecidable, S), has_complexity(L, decidable, S), fragment(L, F), semantics(S, F).

-has_complexity(L, undecidable, S) :- has_complexity(L, decidable, S), fragment(L, F), semantics(S, F).
-has_complexity(L, decidable, S) :- has_complexity(L, undecidable, S), fragment(L, F), semantics(S, F).

% in case equality results between complexity classes become known (not likely):
% equality relation between complexity classes
equal_complexity(X, X) :- complexity_class(X).
equal_complexity (X, Y) :- equal_complexity(Y, X).
equal_complexity(X, Z) :- equal_complexity(X, Y), equal_complexity(Y,Z).
smaller_complexity(C11, C2) :- smaller_complexity(C1, C2), equal_complexity(C1, C11).
smaller_complexity(C1, C22) :- smaller_complexity(C1, C2), equal_complexity(C2, C22).

% according to the time hierarchy theorem, these are strict subsumptions (i.e. not equal classes)
-equal_complexity(p_time, exp_time).
-equal_complexity(exp_time, exp_exp_time).
-equal_complexity(n_p_time, n_exp_time).

%complexity classes are in partial ordering (constructed by skeleton relationship above)
% reflexivity
smaller_complexity(X,X):- complexity_class(X).
% antisymmetry
:- smaller_complexity(X,Y), smaller_complexity(Y,X), not equal_complexity(X, Y).
% transitivity 
smaller_complexity(X,Z):- smaller_complexity(X,Y), smaller_complexity(Y,Z).

%completeness results can be translated
is_complete(L, C, S) :- has_complexity(L, C, S), is_hard(L, C, S).
2 {has_complexity(L, C, S); is_hard(L, C, S)} :- is_complete(L, C, S).

%hardness and inclusion can be propagated
has_complexity(L, C2, S) :- has_complexity(L, C1, S), smaller_complexity(C1, C2), C2 != undecidable.
is_hard(L, C1, S) :- is_hard(L, C2, S), smaller_complexity(C1, C2).




%Collected all defined categories of objects (for checking name collisions in the python software)
obj(X) :- complexity_class(X).
