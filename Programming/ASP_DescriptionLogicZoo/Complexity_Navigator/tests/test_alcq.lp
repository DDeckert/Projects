%Test ALCQ (in comparison to ALCF)
#show more_known/1.
#show less_known/1.

display_logic(L) :- is_DL_type(L, alcq).


less_known(alcq_ES) :- not is_complete(alcq_ES, p_space, standard).
less_known(alcq_AS) :- not is_complete(alcq_AS, p_space, standard).
less_known(alcq_GS) :- not is_complete(alcq_GS, exp_time, standard).

less_known(alcq_EC) :- not is_complete(alcq_EC, p_space, standard).
less_known(alcq_AC) :- not is_complete(alcq_AC, p_space, standard).
less_known(alcq_GC) :- not is_complete(alcq_GC, exp_time, standard).

more_known(alcq_property) :- has_model_property(alcq_GS, tree_model).
less_known(alcq_property) :- not has_model_property(alcq_GS, finite_model).