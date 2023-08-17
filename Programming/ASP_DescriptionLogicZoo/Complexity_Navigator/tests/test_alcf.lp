%Test ALCF (in comparison to ALCQ)
#show more_known/1.
#show less_known/1.


display_logic(L) :- is_DL_type(L, alcf).


less_known(alcf_ES) :- not is_complete(alcf_ES, p_space, standard).
less_known(alcf_AS) :- not is_complete(alcf_AS, p_space, standard).
less_known(alcf_GS) :- not is_complete(alcf_GS, exp_time, standard).

less_known(alcf_EC) :- not is_complete(alcf_EC, p_space, standard).
less_known(alcf_AC) :- not is_complete(alcf_AC, p_space, standard).
less_known(alcf_GC) :- not is_complete(alcf_GC, exp_time, standard).

less_known(alcf_tree_model) :- not has_model_property(alcf_GS, tree_model).
less_known(alcf_finite_model) :- not has_model_property(alcf_GS, finite_model).