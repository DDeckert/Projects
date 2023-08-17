is_complete(L, C, S) :- has_complexity(L, C, S), is_hard(L, C, S).
is_hard(ualc_ES, exp_time, standard).
fragment( (ualc_ES; ualc_EC; ualc_AS; ualc_AC; ualc_GS; ualc_GC), dl).
has_trait(ualc_ES, empty_TBox).
has_complexity(ualcoq_ES, exp_time, standard).
fragment( (ualcoq_ES; ualcoq_EC; ualcoq_AS; ualcoq_AC; ualcoq_GS; ualcoq_GC), dl).
has_extra_restrictions(L1,L2):- has_trait(L1,A),
                          not has_trait(L2, A),
                          trait(A, restriction, F),
                          fragment(L1, F), fragment(L2, F).
higher_logic(X, Y) :- has_extra_restrictions(Y, X),
                    not has_extra_restrictions(X, Y), not has_extra_features(Y, X).
is_hard(L1, C, S) :- is_hard (L2, C, S), higher_logic(L1, L2).