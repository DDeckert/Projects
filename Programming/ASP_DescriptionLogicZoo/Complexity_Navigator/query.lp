%#show display_internalizable/1.
#show display_complexity/3.
#show display_hardness/3.
#show display_completeness/3.
#show display_properties/3.
%#show display_nonproperties/3.

%#show display_logic_hierarchy/2.
%#show display_restricted/2.
%#show display_features/2.
#show display_trait/2.
%#show is_complete/3.

target_logic(ualcoq_ES).

display_internalizable(L) :- is_internalizable(L), is_DL_type(X, L), target_logic(X).
display_complexity(L, C, S) :- interesting_complexity(L, C, S), target_logic(L).
display_hardness(L, C, S) :- interesting_hardness(L, C, S), target_logic(L).
display_completeness(L, C, S) :- is_complete(L, C, S), target_logic(L).
display_properties(L, P, S) :- has_model_property(L, P, S), target_logic(L).
display_nonproperties(L, P, S) :- not_has_model_property(L, P, S), target_logic(L).

display_logic_hierarchy(L1, L2) :- higher_logic(L1, L2), target_logic(L1).
display_logic_hierarchy(L1, L2) :- higher_logic(L1, L2), target_logic(L2).

display_restricted(L1, L2) :- has_extra_restrictions(L1, L2), target_logic(L1).
display_restricted(L1, L2) :- has_extra_restrictions(L1, L2), target_logic(L1).

display_features(L1, L2) :- has_extra_features(L1, L2), target_logic(L1).
display_features(L1, L2) :- has_extra_features(L1, L2), target_logic(L1).

display_trait(L1, T) :- has_trait(L1, T), target_logic(L1).