:- fragment(X, Y1), fragment(X, Y2), Y1 != Y2.
:- higher_logic(X,Y), higher_logic(Y,X), X != Y.
:- smaller_complexity(X,Y), smaller_complexity(Y,X), not equal_complexity(X, Y).
:- has_complexity(L, undecidable, S), has_complexity(L, decidable, S), fragment(L, F), semantics(S, F).
:- has_trait(L, T), not trait(T, feature, _), not trait(T, restriction, _).