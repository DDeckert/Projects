%Test, whether negative model properties can be derived

fragment_type(shi, dl).
is_DL_type((shi_ES; shi_AS; shi_GS; shi_EC; shi_AC; shi_GC), shi).
fragment((shi_ES; shi_AS; shi_GS; shi_EC; shi_AC; shi_GC), dl).
type_has_trait(shi, role_hierarchy).
type_has_trait(shi, inverse_roles).
type_has_trait(shi, T) :- type_has_trait(s, T).

has_trait(shi_ES, empty_TBox).
has_trait(shi_ES, concept_SAT).

has_trait(shi_EC, empty_TBox).
has_trait(shi_EC, aBoxConsistency).

has_trait(shi_AS, acyclic_TBox).
has_trait(shi_AS, concept_SAT).

has_trait(shi_AC, acyclic_TBox).
has_trait(shi_AC, aBoxConsistency).

has_trait(shi_GS, concept_SAT).

has_trait(shi_GC, aBoxConsistency).


display_logic(L) :- is_DL_type(L, shi).


less_known(shi_ES) :- not is_complete(shi_ES, exp_time, standard).
less_known(shi_AS) :- not is_complete(shi_AS, exp_time, standard).
less_known(shi_GS) :- not is_complete(shi_GS, exp_time, standard).

less_known(shi_EC) :- not is_complete(shi_EC, exp_time, standard).
less_known(shi_AC) :- not is_complete(shi_AC, exp_time, standard).
less_known(shi_GC) :- not is_complete(shi_GC, exp_time, standard).

more_known(shi_property) :- has_model_property(shi_GS, finite_model).
less_known(shi_property) :- not -has_model_property(shi_GS, tree_model).