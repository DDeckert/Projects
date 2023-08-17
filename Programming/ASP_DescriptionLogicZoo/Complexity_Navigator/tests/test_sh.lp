%Test, whether completeness results can be derived for unknown complexity class
#show less_known /1.

fragment_type(sh, dl).
is_DL_type((sh_ES; sh_AS; sh_GS; sh_EC; sh_AC; sh_GC), sh).
fragment((sh_ES; sh_AS; sh_GS; sh_EC; sh_AC; sh_GC), dl).
type_has_trait(sh, role_hierarchy).
type_has_trait(sh, T) :- type_has_trait(s, T).

has_trait(sh_ES, empty_TBox).
has_trait(sh_ES, concept_SAT).

has_trait(sh_EC, empty_TBox).
has_trait(sh_EC, aBoxConsistency).

has_trait(sh_AS, acyclic_TBox).
has_trait(sh_AS, concept_SAT).

has_trait(sh_AC, acyclic_TBox).
has_trait(sh_AC, aBoxConsistency).

has_trait(sh_GS, concept_SAT).

has_trait(sh_GC, aBoxConsistency).


display_logic(L) :- is_DL_type(L, sh).


less_known(sh_ES) :- not is_complete(sh_ES, exp_time, standard).
less_known(sh_AS) :- not is_complete(sh_AS, exp_time, standard).
less_known(sh_GS) :- not is_complete(sh_GS, exp_time, standard).

less_known(sh_EC) :- not is_complete(sh_EC, exp_time, standard).
less_known(sh_AC) :- not is_complete(sh_AC, exp_time, standard).
less_known(sh_GC) :- not is_complete(sh_GC, exp_time, standard).

less_known(sh_property) :- not has_model_property(sh_GS, finite_model).
less_known(sh_property) :- not has_model_property(sh_GS, tree_model).