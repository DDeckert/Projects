
#show more_known/1.
#show less_known/1.

display_logic(L) :- is_DL_type(L, si).


less_known(si_ES) :- not is_complete(si_ES, p_space, standard).
less_known(si_AS) :- not is_complete(si_AS, p_space, standard).
less_known(si_GS) :- not is_complete(si_GS, exp_time, standard).

more_known(si_EC) :- is_complete(si_EC, _).
more_known(si_AC) :- is_complete(si_AC, _).
less_known(si_GC) :- not is_complete(si_GC, exp_time, standard).

more_known(si_property) :- has_model_property(si_ES, tree_model).
less_known(si_property) :- not has_model_property(si_ES, finite_model).