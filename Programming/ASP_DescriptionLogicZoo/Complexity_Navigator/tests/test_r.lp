%Test whether partial results can be derived
#show more_known/1.
#show less_known/1.

display_logic(L) :- is_DL_type(L, r).

less_known(r_ES) :- not is_hard(r_ES, exp_time, standard).
less_known(r_AS) :- not is_hard(r_AS, exp_time, standard).
less_known(r_GS) :- not is_hard(r_GS, exp_time, standard).

more_known(r_ES) :- is_complete(r_ES, _, standard).
more_known(r_AS) :- is_complete(r_AS, _, standard).
more_known(r_GS) :- is_complete(r_GS, _, standard).

more_known(r_property) :- has_model_property(r_GS, finite_model).
more_known(r_property) :- has_model_property(r_GS, tree_model).