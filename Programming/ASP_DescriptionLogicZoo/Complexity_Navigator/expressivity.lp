%Predicates that are defined in this file:
%   has_extra_features (logic1, logic2)
%     -> logic1 has some feature that logic2 does not have
%  has_extra_restriction (logic1, logic2)
%     -> logic1 has a restriction that does not apply to logic2
%   higher_logic (logic1, logic2)
%     -> partial order for logic1's features a superset of logic2's features

% comparing logic expressivity
% holds if logic X has 1 or more features that Y doesn't have
has_extra_features(L1, L2):- has_trait(L1,A),
                          -has_trait(L2, A),
                          trait(A, feature, F),
                          fragment(L1, F), fragment(L2, F).

has_extra_restrictions(L1,L2):- has_trait(L1,A),
                          -has_trait(L2, A),
                          trait(A, restriction, F),
                          fragment(L1, F), fragment(L2, F).

% Suppress all unknown values (to False)
-has_trait(L, T) :- not has_trait(L, T), fragment(L, F), trait(T, _, F).
-has_extra_features(L1, L2) :- not has_extra_features(L1, L2), fragment(L1, _), fragment(L2, _).
-has_extra_restrictions(L1, L2) :- not has_extra_restrictions(L1, L2), fragment(L1, _), fragment(L2, _).

% All traits must be features or restrictions
:- has_trait(L, T), not trait(T, feature, _), not trait(T, restriction, _).


% holds if logic X has more feature than Y but not the other way around
higher_logic(X, Y) :- has_extra_features(X, Y),
                    not has_extra_features(Y, X), not has_extra_restrictions(X, Y).
higher_logic(X, Y) :- has_extra_restrictions(Y, X),
                    not has_extra_restrictions(X, Y), not has_extra_features(Y, X).

% partial order rules           %are these rules necessary?
% reflexivity
higher_logic(X,X):- fragment(X, _).
% antisymmetry
:- higher_logic(X,Y), higher_logic(Y,X), X != Y.
% transitivity
higher_logic(X,Z):- higher_logic(X,Y), higher_logic(Y,Z).

% complexity results can be propagated from / to higher logic
has_complexity (L2, C, S) :- has_complexity (L1, C, S), higher_logic(L1, L2), C != undecidable.
is_hard(L1, C, S) :- is_hard (L2, C, S), higher_logic(L1, L2).

has_complexity(L1, undecidable, S) :- has_complexity(L2, undecidable, S), higher_logic(L1, L2).

% most important complexity result is lowest decision complexity and highest hardness result
most_interesting_hardness(L, C1, S) :- is_hard(L, C1, S), {is_hard(L, C2, S): is_hard(L, C2, S), smaller_complexity(C1, C2), C1 != C2} 0.
most_interesting_complexity(L, C2, S) :- has_complexity(L, C2, S), {has_complexity(L, C1, S): has_complexity(L, C1, S), smaller_complexity(C1, C2), C1 != C2} 0.
most_interesting_completeness(L, C, S) :- most_interesting_hardness(L, C, S), most_interesting_complexity(L, C, S).
