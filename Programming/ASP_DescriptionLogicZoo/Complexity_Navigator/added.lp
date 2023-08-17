%New DL (created: 2020-05-19 14:38:09)
fragmentType(alcoiq_reg, dl).
fragment( (alcoiq_reg_ES; alcoiq_reg_EC; alcoiq_reg_AS; alcoiq_reg_AC; alcoiq_reg_GS; alcoiq_reg_GC), dl). 
is_DL_type( (alcoiq_reg_ES; alcoiq_reg_EC; alcoiq_reg_AS; alcoiq_reg_AC; alcoiq_reg_GS; alcoiq_reg_GC), alcoiq_reg).
has_trait(alcoiq_reg_ES, empty_TBox).
has_trait(alcoiq_reg_ES, concept_SAT).
has_trait(alcoiq_reg_EC, empty_TBox).
has_trait(alcoiq_reg_EC, aBoxConsistency).
has_trait(alcoiq_reg_AS, acyclic_TBox).
has_trait(alcoiq_reg_AS, concept_SAT).
has_trait(alcoiq_reg_AC, acyclic_TBox).
has_trait(alcoiq_reg_AC, aBoxConsistency).
has_trait(alcoiq_reg_GS, concept_SAT).
has_trait(alcoiq_reg_GC, aBoxConsistency).

%New result (created: 2020-05-19 14:40:43)
type_has_trait(alcoiq_reg, T) :- type_has_trait(alcoiq, T).
%New result (created: 2020-05-19 14:41:07)
type_has_trait(alcoiq_reg, regular).

