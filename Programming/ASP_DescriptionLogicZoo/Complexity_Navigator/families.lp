#include "dl.lp".
#include "fol.lp".
#include "modal.lp".

%This file contains rules for the different families of logic fragments

family(fol; dl; modal_propositional; modal_fo).

:- fragment(X, Y1), fragment(X, Y2), Y1 != Y2.

%subsumed (trait1, trait2) 
%Trait 1 is subsumed by trait 2 (and trait 1 can thus be derived)
has_trait(L, T1) :- has_trait(L, T2), subsumed_trait(T1, T2).

%Complexity results may be different depending on the semantics
%most semantics are specific to one family of logic (except for "standard" semantics)
semantics(standard, F) :- family(F).

%Interesting complexity results are those that imply all other results
%(min complexity, max hardness)
interesting_complexity(L, C, S) :- has_complexity(L, C, S), {complexity_class(C2): has_complexity(L, C2, S), C != C2, smaller_complexity(C2, C)} 0.
interesting_hardness(L, C, S) :- is_hard(L, C, S), {complexity_class(C2): is_hard(L, C2, S), C != C2, smaller_complexity(C, C2)} 0.

%Collected all defined categories of objects (for checking name collisions in the python software)
obj(X) :- family(X).
obj(X) :- fragment(X, _).
obj(X) :- trait(X, _, _).
obj(X) :- semantics(X, _).
