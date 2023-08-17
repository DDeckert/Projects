%Test whether different results can be derived for different semantical modes
#show more_known/1.
#show less_known/1.

display_logic(L) :- is_DL_type(L, alco).


less_known(alco_ES) :- not is_complete(alco_ES, p_space, standard).
less_known(alco_AS) :- not is_complete(alco_AS, p_space, standard).
less_known(alco_GS) :- not is_complete(alco_GS, exp_time, standard).

less_known(alco_EC) :- not is_complete(alco_EC, p_space, standard).
less_known(alco_AC) :- not is_complete(alco_AC, p_space, standard).
less_known(alco_GC) :- not is_complete(alco_GC, exp_time, standard).

more_known(alco_property) :- has_model_property(alco_GS, tree_model).
less_known(alco_property) :- not has_model_property(alco_GS, finite_model).
