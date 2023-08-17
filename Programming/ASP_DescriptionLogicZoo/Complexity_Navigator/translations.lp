%This file defines notions of translation between logics of different families
% a translation from X to Y is a polynomial function f such that x is satisfiable in X iff f(x) is satisifiable in Y

% translation (logicX, logicY)
% logic X can be translated into logic Y
    % chain of translations can be connected
translation(X, Z) :- translation(X, Y), translation(Y, Z).
    % hardness is preserved by translation (for complexity classes >= P)
is_hard(Y, C) :- is_hard(X, C), translation(X, Y), smaller_complexity(p_time, C).
    % complexity of translated logic gives upper bound for translation logic
has_complexity(X, C) :- has_complexity(Y, C), translation(X, Y), C != undecidable.

%translation(X, Z) :- translation(X, Y), higher_logic(Z, Y).

translation(L, fo2) :- is_DL_type(L, alc).
translation(L, guarded_fragment) :- is_DL_type(L, alc).

translation(ctl, ml_mu).        %CTL is a subset of mu fixed point modal logic
