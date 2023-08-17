%Test whether fragment completeness results can be derived one-sidedly
%or if even more is derived

display_logic(L) :- is_DL_type(L, ualc).


less_known(ualc_ES) :- not is_complete(ualc_ES, exp_time, standard).
less_known(ualc_AS) :- not is_complete(ualc_AS, exp_time, standard).
less_known(ualc_GS) :- not is_complete(ualc_GS, exp_time, standard).

more_known(ualc_EC) :- is_complete(ualc_EC, _, S).
more_known(ualc_AC) :- is_complete(ualc_AC, _, S).
more_known(ualc_GC) :- is_complete(ualc_GC, _, S).

less_known(ualc_property) :- not has_model_property(ualc_GS, finite_model).
less_known(ualc_property) :- not has_model_property(ualc_GS, tree_model).