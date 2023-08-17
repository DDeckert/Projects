has_complexity(alcq_AS, p_space, standard).
has_complexity(alc_GS, exp_time, standard).
has_complexity(alcn_ES, p_space, standard).
is_hard(alcn_ES, p_space, standard).
has_complexity(r_GS, decidable, standard).
is_hard(alc_ES, p_space, standard).
type_has_property(alc, finite_model, standard).
type_has_property(alc, tree_model, standard).
type_has_property(alcq, finite_model, standard).
fragmentType(alc, dl).
fragment( (alc_ES; alc_EC; alc_AS; alc_AC; alc_GS; alc_GC), dl).
is_DL_type( (alc_ES; alc_EC; alc_AS; alc_AC; alc_GS; alc_GC), alc).
has_trait(alc_ES, empty_TBox).
has_trait(alc_ES, concept_SAT).
has_trait(alc_EC, empty_TBox).
has_trait(alc_EC, aBoxConsistency).
has_trait(alc_AS, acyclic_TBox).
has_trait(alc_AS, concept_SAT).
has_trait(alc_AC, acyclic_TBox).
has_trait(alc_AC, aBoxConsistency).
has_trait(alc_GS, concept_SAT).
has_trait(alc_GC, aBoxConsistency).
fragmentType(alcq, dl).
type_has_trait(alcq, qualified_number_restriction).
fragment( (alcq_ES; alcq_EC; alcq_AS; alcq_AC; alcq_GS; alcq_GC), dl).
is_DL_type( (alcq_ES; alcq_EC; alcq_AS; alcq_AC; alcq_GS; alcq_GC), alcq).
has_trait(alcq_ES, empty_TBox).
has_trait(alcq_ES, concept_SAT).
has_trait(alcq_EC, empty_TBox).
has_trait(alcq_EC, aBoxConsistency).
has_trait(alcq_AS, acyclic_TBox).
has_trait(alcq_AS, concept_SAT).
has_trait(alcq_AC, acyclic_TBox).
has_trait(alcq_AC, aBoxConsistency).
has_trait(alcq_GS, concept_SAT).
has_trait(alcq_GC, aBoxConsistency).
fragmentType(r, dl).
type_has_trait(r, (transitive_roles; role_hierarchy; complex_role_inclusion)).
fragment( (r_ES; r_EC; r_AS; r_AC; r_GS; r_GC), dl).
is_DL_type( (r_ES; r_EC; r_AS; r_AC; r_GS; r_GC), r).
has_trait(r_ES, empty_TBox).
has_trait(r_ES, concept_SAT).
has_trait(r_EC, empty_TBox).
has_trait(r_EC, aBoxConsistency).
has_trait(r_AS, acyclic_TBox).
has_trait(r_AS, concept_SAT).
has_trait(r_AC, acyclic_TBox).
has_trait(r_AC, aBoxConsistency).
has_trait(r_GS, concept_SAT).
has_trait(r_GC, aBoxConsistency).
fragmentType(alcf, dl).
type_has_trait(alcf, functionality).
fragment( (alcf_ES; alcf_EC; alcf_AS; alcf_AC; alcf_GS; alcf_GC), dl).
is_DL_type( (alcf_ES; alcf_EC; alcf_AS; alcf_AC; alcf_GS; alcf_GC), alcf).
has_trait(alcf_ES, empty_TBox).
has_trait(alcf_ES, concept_SAT).
has_trait(alcf_EC, empty_TBox).
has_trait(alcf_EC, aBoxConsistency).
has_trait(alcf_AS, acyclic_TBox).
has_trait(alcf_AS, concept_SAT).
has_trait(alcf_AC, acyclic_TBox).
has_trait(alcf_AC, aBoxConsistency).
has_trait(alcf_GS, concept_SAT).
has_trait(alcf_GC, aBoxConsistency).
fragmentType(alcn, dl).
type_has_trait(alcn, unqualified_number_restriction).
fragment( (alcn_ES; alcn_EC; alcn_AS; alcn_AC; alcn_GS; alcn_GC), dl).
is_DL_type( (alcn_ES; alcn_EC; alcn_AS; alcn_AC; alcn_GS; alcn_GC), alcn).
has_trait(alcn_ES, empty_TBox).
has_trait(alcn_ES, concept_SAT).
has_trait(alcn_EC, empty_TBox).
has_trait(alcn_EC, aBoxConsistency).
has_trait(alcn_AS, acyclic_TBox).
has_trait(alcn_AS, concept_SAT).
has_trait(alcn_AC, acyclic_TBox).
has_trait(alcn_AC, aBoxConsistency).
has_trait(alcn_GS, concept_SAT).
has_trait(alcn_GC, aBoxConsistency).
fragmentType(alch, dl).
type_has_trait(alch, role_hierarchy).
fragment( (alch_ES; alch_EC; alch_AS; alch_AC; alch_GS; alch_GC), dl).
is_DL_type( (alch_ES; alch_EC; alch_AS; alch_AC; alch_GS; alch_GC), alch).
has_trait(alch_ES, empty_TBox).
has_trait(alch_ES, concept_SAT).
has_trait(alch_EC, empty_TBox).
has_trait(alch_EC, aBoxConsistency).
has_trait(alch_AS, acyclic_TBox).
has_trait(alch_AS, concept_SAT).
has_trait(alch_AC, acyclic_TBox).
has_trait(alch_AC, aBoxConsistency).
has_trait(alch_GS, concept_SAT).
has_trait(alch_GC, aBoxConsistency).
has_complexity(alcoq_AC, p_space, standard).
has_complexity(alcoq_AS, p_space, standard).
has_complexity(alco_GC, exp_time, standard).
has_complexity(alcoq_EC, p_space, standard).
has_complexity(alcoq_GC, exp_time, standard).
is_hard(alcoif_ES, n_exp_time, standard).
has_complexity(alcoiq_EC, n_exp_time, standard).
-has_model_property(alcoif_GS, finite_model, standard).
-has_model_property(alcoif_GC, finite_model, standard).
-has_model_property(alcoin_GS, finite_model, standard).
-has_model_property(alcoin_GC, finite_model, standard).
-has_model_property(alcoiq_GS, finite_model, standard).
-has_model_property(alcoiq_GC, finite_model, standard).
fragmentType(alco, dl).
type_has_trait(alco, nominals).
type_has_trait(alco, T) :- type_has_trait(alc, T).
fragment( (alco_ES; alco_EC; alco_AS; alco_AC; alco_GS; alco_GC), dl).
is_DL_type( (alco_ES; alco_EC; alco_AS; alco_AC; alco_GS; alco_GC), alco).
has_trait(alco_ES, empty_TBox).
has_trait(alco_ES, concept_SAT).
has_trait(alco_EC, empty_TBox).
has_trait(alco_EC, aBoxConsistency).
has_trait(alco_AS, acyclic_TBox).
has_trait(alco_AS, concept_SAT).
has_trait(alco_AC, acyclic_TBox).
has_trait(alco_AC, aBoxConsistency).
has_trait(alco_GS, concept_SAT).
has_trait(alco_GC, aBoxConsistency).
fragmentType(alcof, dl).
type_has_trait(alcof, functionality).
type_has_trait(alcof, T) :- type_has_trait(alco, T).
fragment( (alcof_ES; alcof_EC; alcof_AS; alcof_AC; alcof_GS; alcof_GC), dl).
is_DL_type( (alcof_ES; alcof_EC; alcof_AS; alcof_AC; alcof_GS; alcof_GC), alcof).
has_trait(alcof_ES, empty_TBox).
has_trait(alcof_ES, concept_SAT).
has_trait(alcof_EC, empty_TBox).
has_trait(alcof_EC, aBoxConsistency).
has_trait(alcof_AS, acyclic_TBox).
has_trait(alcof_AS, concept_SAT).
has_trait(alcof_AC, acyclic_TBox).
has_trait(alcof_AC, aBoxConsistency).
has_trait(alcof_GS, concept_SAT).
has_trait(alcof_GC, aBoxConsistency).
fragmentType(alcon, dl).
type_has_trait(alcon, unqualified_number_restriction).
type_has_trait(alcon, T) :- type_has_trait(alco, T).
fragment( (alcon_ES; alcon_EC; alcon_AS; alcon_AC; alcon_GS; alcon_GC), dl).
is_DL_type( (alcon_ES; alcon_EC; alcon_AS; alcon_AC; alcon_GS; alcon_GC), alcon).
has_trait(alcon_ES, empty_TBox).
has_trait(alcon_ES, concept_SAT).
has_trait(alcon_EC, empty_TBox).
has_trait(alcon_EC, aBoxConsistency).
has_trait(alcon_AS, acyclic_TBox).
has_trait(alcon_AS, concept_SAT).
has_trait(alcon_AC, acyclic_TBox).
has_trait(alcon_AC, aBoxConsistency).
has_trait(alcon_GS, concept_SAT).
has_trait(alcon_GC, aBoxConsistency).
fragmentType(alcoq, dl).
type_has_trait(alcoq, qualified_number_restriction).
type_has_trait(alcoq, T) :- type_has_trait(alco, T).
fragment( (alcoq_ES; alcoq_EC; alcoq_AS; alcoq_AC; alcoq_GS; alcoq_GC), dl).
is_DL_type( (alcoq_ES; alcoq_EC; alcoq_AS; alcoq_AC; alcoq_GS; alcoq_GC), alcoq).
has_trait(alcoq_ES, empty_TBox).
has_trait(alcoq_ES, concept_SAT).
has_trait(alcoq_EC, empty_TBox).
has_trait(alcoq_EC, aBoxConsistency).
has_trait(alcoq_AS, acyclic_TBox).
has_trait(alcoq_AS, concept_SAT).
has_trait(alcoq_AC, acyclic_TBox).
has_trait(alcoq_AC, aBoxConsistency).
has_trait(alcoq_GS, concept_SAT).
has_trait(alcoq_GC, aBoxConsistency).
fragmentType(alcoi, dl).
type_has_trait(alcoi, inverse_roles).
type_has_trait(alcoi, T) :- type_has_trait(alco, T).
fragment( (alcoi_ES; alcoi_EC; alcoi_AS; alcoi_AC; alcoi_GS; alcoi_GC), dl).
is_DL_type( (alcoi_ES; alcoi_EC; alcoi_AS; alcoi_AC; alcoi_GS; alcoi_GC), alcoi).
has_trait(alcoi_ES, empty_TBox).
has_trait(alcoi_ES, concept_SAT).
has_trait(alcoi_EC, empty_TBox).
has_trait(alcoi_EC, aBoxConsistency).
has_trait(alcoi_AS, acyclic_TBox).
has_trait(alcoi_AS, concept_SAT).
has_trait(alcoi_AC, acyclic_TBox).
has_trait(alcoi_AC, aBoxConsistency).
has_trait(alcoi_GS, concept_SAT).
has_trait(alcoi_GC, aBoxConsistency).
fragmentType(alcoif, dl).
type_has_trait(alcoif, functionality).
type_has_trait(alcoif, T) :- type_has_trait(alcoi, T).
fragment( (alcoif_ES; alcoif_EC; alcoif_AS; alcoif_AC; alcoif_GS; alcoif_GC), dl).
is_DL_type( (alcoif_ES; alcoif_EC; alcoif_AS; alcoif_AC; alcoif_GS; alcoif_GC), alcoif).
has_trait(alcoif_ES, empty_TBox).
has_trait(alcoif_ES, concept_SAT).
has_trait(alcoif_EC, empty_TBox).
has_trait(alcoif_EC, aBoxConsistency).
has_trait(alcoif_AS, acyclic_TBox).
has_trait(alcoif_AS, concept_SAT).
has_trait(alcoif_AC, acyclic_TBox).
has_trait(alcoif_AC, aBoxConsistency).
has_trait(alcoif_GS, concept_SAT).
has_trait(alcoif_GC, aBoxConsistency).
fragmentType(alcoin, dl).
type_has_trait(alcoin, unqualified_number_restriction).
type_has_trait(alcoin, T) :- type_has_trait(alcoi, T).
fragment( (alcoin_ES; alcoin_EC; alcoin_AS; alcoin_AC; alcoin_GS; alcoin_GC), dl).
is_DL_type( (alcoin_ES; alcoin_EC; alcoin_AS; alcoin_AC; alcoin_GS; alcoin_GC), alcoin).
has_trait(alcoin_ES, empty_TBox).
has_trait(alcoin_ES, concept_SAT).
has_trait(alcoin_EC, empty_TBox).
has_trait(alcoin_EC, aBoxConsistency).
has_trait(alcoin_AS, acyclic_TBox).
has_trait(alcoin_AS, concept_SAT).
has_trait(alcoin_AC, acyclic_TBox).
has_trait(alcoin_AC, aBoxConsistency).
has_trait(alcoin_GS, concept_SAT).
has_trait(alcoin_GC, aBoxConsistency).
fragmentType(alcoiq, dl).
type_has_trait(alcoiq, qualified_number_restriction).
type_has_trait(alcoiq, T) :- type_has_trait(alcoi, T).
fragment( (alcoiq_ES; alcoiq_EC; alcoiq_AS; alcoiq_AC; alcoiq_GS; alcoiq_GC), dl).
is_DL_type( (alcoiq_ES; alcoiq_EC; alcoiq_AS; alcoiq_AC; alcoiq_GS; alcoiq_GC), alcoiq).
has_trait(alcoiq_ES, empty_TBox).
has_trait(alcoiq_ES, concept_SAT).
has_trait(alcoiq_EC, empty_TBox).
has_trait(alcoiq_EC, aBoxConsistency).
has_trait(alcoiq_AS, acyclic_TBox).
has_trait(alcoiq_AS, concept_SAT).
has_trait(alcoiq_AC, acyclic_TBox).
has_trait(alcoiq_AC, aBoxConsistency).
has_trait(alcoiq_GS, concept_SAT).
has_trait(alcoiq_GC, aBoxConsistency).
is_hard(ualc_GS, exp_time, standard).
is_hard(ualc_ES, exp_time, standard).
has_complexity(ualc_GS, exp_time, standard).
has_complexity(ualc_ES, exp_time, standard).
has_complexity(ualcf_ES, exp_time, standard).
has_complexity(ualcn_ES, exp_time, standard).
has_complexity(ualcq_ES, exp_time, standard).
has_complexity(ualciq_ES, exp_time, standard).
has_complexity(ualcq_ES, exp_time, standard).
has_complexity(ualcoi_ES, exp_time, standard).
has_complexity(ualcoq_ES, exp_time, standard).
has_complexity(ualcoif_ES, undecidable, standard).
type_has_property(ualc, finite_model, standard).
type_has_property(ualc, tree_model, standard).
-type_has_property(ualco, tree_model, standard).
-type_has_property(ualcoif, finite_model, standard).
fragmentType(ualc, dl).
type_has_trait(ualc, least_fix_point_op).
type_has_trait(ualc, T) :- type_has_trait(alc, T).
fragment( (ualc_ES; ualc_EC; ualc_AS; ualc_AC; ualc_GS; ualc_GC), dl).
is_DL_type( (ualc_ES; ualc_EC; ualc_AS; ualc_AC; ualc_GS; ualc_GC), ualc).
has_trait(ualc_ES, empty_TBox).
has_trait(ualc_ES, concept_SAT).
has_trait(ualc_EC, empty_TBox).
has_trait(ualc_EC, aBoxConsistency).
has_trait(ualc_AS, acyclic_TBox).
has_trait(ualc_AS, concept_SAT).
has_trait(ualc_AC, acyclic_TBox).
has_trait(ualc_AC, aBoxConsistency).
has_trait(ualc_GS, concept_SAT).
has_trait(ualc_GC, aBoxConsistency).
fragmentType(ualcf, dl).
type_has_trait(ualcf, functionality).
type_has_trait(ualcf, T) :- type_has_trait(ualc, T).
fragment( (ualcf_ES; ualcf_EC; ualcf_AS; ualcf_AC; ualcf_GS; ualcf_GC), dl).
is_DL_type( (ualcf_ES; ualcf_EC; ualcf_AS; ualcf_AC; ualcf_GS; ualcf_GC), ualcf).
has_trait(ualcf_ES, empty_TBox).
has_trait(ualcf_ES, concept_SAT).
has_trait(ualcf_EC, empty_TBox).
has_trait(ualcf_EC, aBoxConsistency).
has_trait(ualcf_AS, acyclic_TBox).
has_trait(ualcf_AS, concept_SAT).
has_trait(ualcf_AC, acyclic_TBox).
has_trait(ualcf_AC, aBoxConsistency).
has_trait(ualcf_GS, concept_SAT).
has_trait(ualcf_GC, aBoxConsistency).
fragmentType(ualcn, dl).
type_has_trait(ualcn, unqualified_number_restriction).
type_has_trait(ualcn, T) :- type_has_trait(ualc, T).
fragment( (ualcn_ES; ualcn_EC; ualcn_AS; ualcn_AC; ualcn_GS; ualcn_GC), dl).
is_DL_type( (ualcn_ES; ualcn_EC; ualcn_AS; ualcn_AC; ualcn_GS; ualcn_GC), ualcn).
has_trait(ualcn_ES, empty_TBox).
has_trait(ualcn_ES, concept_SAT).
has_trait(ualcn_EC, empty_TBox).
has_trait(ualcn_EC, aBoxConsistency).
has_trait(ualcn_AS, acyclic_TBox).
has_trait(ualcn_AS, concept_SAT).
has_trait(ualcn_AC, acyclic_TBox).
has_trait(ualcn_AC, aBoxConsistency).
has_trait(ualcn_GS, concept_SAT).
has_trait(ualcn_GC, aBoxConsistency).
fragmentType(ualcq, dl).
type_has_trait(ualcq, qualified_number_restriction).
type_has_trait(ualcq, T) :- type_has_trait(ualc, T).
fragment( (ualcq_ES; ualcq_EC; ualcq_AS; ualcq_AC; ualcq_GS; ualcq_GC), dl).
is_DL_type( (ualcq_ES; ualcq_EC; ualcq_AS; ualcq_AC; ualcq_GS; ualcq_GC), ualcq).
has_trait(ualcq_ES, empty_TBox).
has_trait(ualcq_ES, concept_SAT).
has_trait(ualcq_EC, empty_TBox).
has_trait(ualcq_EC, aBoxConsistency).
has_trait(ualcq_AS, acyclic_TBox).
has_trait(ualcq_AS, concept_SAT).
has_trait(ualcq_AC, acyclic_TBox).
has_trait(ualcq_AC, aBoxConsistency).
has_trait(ualcq_GS, concept_SAT).
has_trait(ualcq_GC, aBoxConsistency).
fragmentType(ualci, dl).
type_has_trait(ualci, inverse_roles).
type_has_trait(ualci, T) :- type_has_trait(ualc, T).
fragment( (ualci_ES; ualci_EC; ualci_AS; ualci_AC; ualci_GS; ualci_GC), dl).
is_DL_type( (ualci_ES; ualci_EC; ualci_AS; ualci_AC; ualci_GS; ualci_GC), ualci).
has_trait(ualci_ES, empty_TBox).
has_trait(ualci_ES, concept_SAT).
has_trait(ualci_EC, empty_TBox).
has_trait(ualci_EC, aBoxConsistency).
has_trait(ualci_AS, acyclic_TBox).
has_trait(ualci_AS, concept_SAT).
has_trait(ualci_AC, acyclic_TBox).
has_trait(ualci_AC, aBoxConsistency).
has_trait(ualci_GS, concept_SAT).
has_trait(ualci_GC, aBoxConsistency).
fragmentType(ualcif, dl).
type_has_trait(ualcif, functionality).
type_has_trait(ualcif, T) :- type_has_trait(ualci, T).
fragment( (ualcif_ES; ualcif_EC; ualcif_AS; ualcif_AC; ualcif_GS; ualcif_GC), dl).
is_DL_type( (ualcif_ES; ualcif_EC; ualcif_AS; ualcif_AC; ualcif_GS; ualcif_GC), ualcif).
has_trait(ualcif_ES, empty_TBox).
has_trait(ualcif_ES, concept_SAT).
has_trait(ualcif_EC, empty_TBox).
has_trait(ualcif_EC, aBoxConsistency).
has_trait(ualcif_AS, acyclic_TBox).
has_trait(ualcif_AS, concept_SAT).
has_trait(ualcif_AC, acyclic_TBox).
has_trait(ualcif_AC, aBoxConsistency).
has_trait(ualcif_GS, concept_SAT).
has_trait(ualcif_GC, aBoxConsistency).
fragmentType(ualciq, dl).
type_has_trait(ualciq, qualified_number_restriction).
type_has_trait(ualciq, T) :- type_has_trait(ualci, T).
fragment( (ualciq_ES; ualciq_EC; ualciq_AS; ualciq_AC; ualciq_GS; ualciq_GC), dl).
is_DL_type( (ualciq_ES; ualciq_EC; ualciq_AS; ualciq_AC; ualciq_GS; ualciq_GC), ualciq).
has_trait(ualciq_ES, empty_TBox).
has_trait(ualciq_ES, concept_SAT).
has_trait(ualciq_EC, empty_TBox).
has_trait(ualciq_EC, aBoxConsistency).
has_trait(ualciq_AS, acyclic_TBox).
has_trait(ualciq_AS, concept_SAT).
has_trait(ualciq_AC, acyclic_TBox).
has_trait(ualciq_AC, aBoxConsistency).
has_trait(ualciq_GS, concept_SAT).
has_trait(ualciq_GC, aBoxConsistency).
fragmentType(ualco, dl).
type_has_trait(ualco, nominals).
type_has_trait(ualco, T) :- type_has_trait(ualc, T).
fragment( (ualco_ES; ualco_EC; ualco_AS; ualco_AC; ualco_GS; ualco_GC), dl).
is_DL_type( (ualco_ES; ualco_EC; ualco_AS; ualco_AC; ualco_GS; ualco_GC), ualco).
has_trait(ualco_ES, empty_TBox).
has_trait(ualco_ES, concept_SAT).
has_trait(ualco_EC, empty_TBox).
has_trait(ualco_EC, aBoxConsistency).
has_trait(ualco_AS, acyclic_TBox).
has_trait(ualco_AS, concept_SAT).
has_trait(ualco_AC, acyclic_TBox).
has_trait(ualco_AC, aBoxConsistency).
has_trait(ualco_GS, concept_SAT).
has_trait(ualco_GC, aBoxConsistency).
fragmentType(ualcof, dl).
type_has_trait(ualcof, functionality).
type_has_trait(ualcof, T) :- type_has_trait(ualco, T).
fragment( (ualcof_ES; ualcof_EC; ualcof_AS; ualcof_AC; ualcof_GS; ualcof_GC), dl).
is_DL_type( (ualcof_ES; ualcof_EC; ualcof_AS; ualcof_AC; ualcof_GS; ualcof_GC), ualcof).
has_trait(ualcof_ES, empty_TBox).
has_trait(ualcof_ES, concept_SAT).
has_trait(ualcof_EC, empty_TBox).
has_trait(ualcof_EC, aBoxConsistency).
has_trait(ualcof_AS, acyclic_TBox).
has_trait(ualcof_AS, concept_SAT).
has_trait(ualcof_AC, acyclic_TBox).
has_trait(ualcof_AC, aBoxConsistency).
has_trait(ualcof_GS, concept_SAT).
has_trait(ualcof_GC, aBoxConsistency).
fragmentType(ualcoq, dl).
type_has_trait(ualcoq, qualified_number_restriction).
type_has_trait(ualcoq, T) :- type_has_trait(ualco, T).
fragment( (ualcoq_ES; ualcoq_EC; ualcoq_AS; ualcoq_AC; ualcoq_GS; ualcoq_GC), dl).
is_DL_type( (ualcoq_ES; ualcoq_EC; ualcoq_AS; ualcoq_AC; ualcoq_GS; ualcoq_GC), ualcoq).
has_trait(ualcoq_ES, empty_TBox).
has_trait(ualcoq_ES, concept_SAT).
has_trait(ualcoq_EC, empty_TBox).
has_trait(ualcoq_EC, aBoxConsistency).
has_trait(ualcoq_AS, acyclic_TBox).
has_trait(ualcoq_AS, concept_SAT).
has_trait(ualcoq_AC, acyclic_TBox).
has_trait(ualcoq_AC, aBoxConsistency).
has_trait(ualcoq_GS, concept_SAT).
has_trait(ualcoq_GC, aBoxConsistency).
fragmentType(ualcoi, dl).
type_has_trait(ualcoi, inverse_roles).
type_has_trait(ualcoi, T) :- type_has_trait(ualco, T).
fragment( (ualcoi_ES; ualcoi_EC; ualcoi_AS; ualcoi_AC; ualcoi_GS; ualcoi_GC), dl).
is_DL_type( (ualcoi_ES; ualcoi_EC; ualcoi_AS; ualcoi_AC; ualcoi_GS; ualcoi_GC), ualcoi).
has_trait(ualcoi_ES, empty_TBox).
has_trait(ualcoi_ES, concept_SAT).
has_trait(ualcoi_EC, empty_TBox).
has_trait(ualcoi_EC, aBoxConsistency).
has_trait(ualcoi_AS, acyclic_TBox).
has_trait(ualcoi_AS, concept_SAT).
has_trait(ualcoi_AC, acyclic_TBox).
has_trait(ualcoi_AC, aBoxConsistency).
has_trait(ualcoi_GS, concept_SAT).
has_trait(ualcoi_GC, aBoxConsistency).
fragmentType(ualcoif, dl).
type_has_trait(ualcoif, functionality).
type_has_trait(ualcoif, T) :- type_has_trait(ualcoi, T).
fragment( (ualcoif_ES; ualcoif_EC; ualcoif_AS; ualcoif_AC; ualcoif_GS; ualcoif_GC), dl).
is_DL_type( (ualcoif_ES; ualcoif_EC; ualcoif_AS; ualcoif_AC; ualcoif_GS; ualcoif_GC), ualcoif).
has_trait(ualcoif_ES, empty_TBox).
has_trait(ualcoif_ES, concept_SAT).
has_trait(ualcoif_EC, empty_TBox).
has_trait(ualcoif_EC, aBoxConsistency).
has_trait(ualcoif_AS, acyclic_TBox).
has_trait(ualcoif_AS, concept_SAT).
has_trait(ualcoif_AC, acyclic_TBox).
has_trait(ualcoif_AC, aBoxConsistency).
has_trait(ualcoif_GS, concept_SAT).
has_trait(ualcoif_GC, aBoxConsistency).
fragmentType(ualcoiq, dl).
type_has_trait(ualcoiq, qualified_number_restriction).
type_has_trait(ualcoiq, T) :- type_has_trait(ualcoi, T).
fragment( (ualcoiq_ES; ualcoiq_EC; ualcoiq_AS; ualcoiq_AC; ualcoiq_GS; ualcoiq_GC), dl).
is_DL_type( (ualcoiq_ES; ualcoiq_EC; ualcoiq_AS; ualcoiq_AC; ualcoiq_GS; ualcoiq_GC), ualcoiq).
has_trait(ualcoiq_ES, empty_TBox).
has_trait(ualcoiq_ES, concept_SAT).
has_trait(ualcoiq_EC, empty_TBox).
has_trait(ualcoiq_EC, aBoxConsistency).
has_trait(ualcoiq_AS, acyclic_TBox).
has_trait(ualcoiq_AS, concept_SAT).
has_trait(ualcoiq_AC, acyclic_TBox).
has_trait(ualcoiq_AC, aBoxConsistency).
has_trait(ualcoiq_GS, concept_SAT).
has_trait(ualcoiq_GC, aBoxConsistency).
has_complexity(alci_AS, p_space, standard).
has_complexity(alci_EC, p_space, standard).
has_complexity(alci_AC, p_space, standard).
has_complexity(alciq_ES, p_space, standard).
has_complexity(alcif_EC, p_space, standard).
has_complexity(alcif_AC, p_space, standard).
has_complexity(alcin_AC, p_space, standard).
has_complexity(alciq_AC, p_space, standard).
has_complexity(alciq_reg_GS, exp_time, standard).
-has_model_property(alcif_gs, finite_model, standard).
-has_model_property(alcif_gc, finite_model, standard).
-has_model_property(alcin_gs, finite_model, standard).
-has_model_property(alcin_gc, finite_model, standard).
-has_model_property(alciq_gs, finite_model, standard).
-has_model_property(alciq_gc, finite_model, standard).
type_has_property(alcif_reg, tree_model, standard).
fragmentType(alci, dl).
type_has_trait(alci, inverse_roles).
fragment( (alci_ES; alci_EC; alci_AS; alci_AC; alci_GS; alci_GC), dl).
is_DL_type( (alci_ES; alci_EC; alci_AS; alci_AC; alci_GS; alci_GC), alci).
has_trait(alci_ES, empty_TBox).
has_trait(alci_ES, concept_SAT).
has_trait(alci_EC, empty_TBox).
has_trait(alci_EC, aBoxConsistency).
has_trait(alci_AS, acyclic_TBox).
has_trait(alci_AS, concept_SAT).
has_trait(alci_AC, acyclic_TBox).
has_trait(alci_AC, aBoxConsistency).
has_trait(alci_GS, concept_SAT).
has_trait(alci_GC, aBoxConsistency).
fragmentType(alcin, dl).
type_has_trait(alcin, unqualified_number_restriction).
type_has_trait(alcin, T) :- type_has_trait(alci, T).
fragment( (alcin_ES; alcin_EC; alcin_AS; alcin_AC; alcin_GS; alcin_GC), dl).
is_DL_type( (alcin_ES; alcin_EC; alcin_AS; alcin_AC; alcin_GS; alcin_GC), alcin).
has_trait(alcin_ES, empty_TBox).
has_trait(alcin_ES, concept_SAT).
has_trait(alcin_EC, empty_TBox).
has_trait(alcin_EC, aBoxConsistency).
has_trait(alcin_AS, acyclic_TBox).
has_trait(alcin_AS, concept_SAT).
has_trait(alcin_AC, acyclic_TBox).
has_trait(alcin_AC, aBoxConsistency).
has_trait(alcin_GS, concept_SAT).
has_trait(alcin_GC, aBoxConsistency).
fragmentType(alcif, dl).
type_has_trait(alcif, functionality).
type_has_trait(alcif, T) :- type_has_trait(alci, T).
fragment( (alcif_ES; alcif_EC; alcif_AS; alcif_AC; alcif_GS; alcif_GC), dl).
is_DL_type( (alcif_ES; alcif_EC; alcif_AS; alcif_AC; alcif_GS; alcif_GC), alcif).
has_trait(alcif_ES, empty_TBox).
has_trait(alcif_ES, concept_SAT).
has_trait(alcif_EC, empty_TBox).
has_trait(alcif_EC, aBoxConsistency).
has_trait(alcif_AS, acyclic_TBox).
has_trait(alcif_AS, concept_SAT).
has_trait(alcif_AC, acyclic_TBox).
has_trait(alcif_AC, aBoxConsistency).
has_trait(alcif_GS, concept_SAT).
has_trait(alcif_GC, aBoxConsistency).
fragmentType(alciq, dl).
type_has_trait(alciq, qualified_number_restriction).
type_has_trait(alciq, T) :- type_has_trait(alci, T).
fragment( (alciq_ES; alciq_EC; alciq_AS; alciq_AC; alciq_GS; alciq_GC), dl).
is_DL_type( (alciq_ES; alciq_EC; alciq_AS; alciq_AC; alciq_GS; alciq_GC), alciq).
has_trait(alciq_ES, empty_TBox).
has_trait(alciq_ES, concept_SAT).
has_trait(alciq_EC, empty_TBox).
has_trait(alciq_EC, aBoxConsistency).
has_trait(alciq_AS, acyclic_TBox).
has_trait(alciq_AS, concept_SAT).
has_trait(alciq_AC, acyclic_TBox).
has_trait(alciq_AC, aBoxConsistency).
has_trait(alciq_GS, concept_SAT).
has_trait(alciq_GC, aBoxConsistency).
fragmentType(alcif_reg, dl).
type_has_trait(alcif_reg, regular).
type_has_trait(alcif_reg, T) :- type_has_trait(alcif, T).
fragment( (alcif_reg_ES; alcif_reg_EC; alcif_reg_AS; alcif_reg_AC; alcif_reg_GS; alcif_reg_GC), dl).
is_DL_type( (alcif_reg_ES; alcif_reg_EC; alcif_reg_AS; alcif_reg_AC; alcif_reg_GS; alcif_reg_GC), alcif_reg).
has_trait(alcif_reg_ES, empty_TBox).
has_trait(alcif_reg_ES, concept_SAT).
has_trait(alcif_reg_EC, empty_TBox).
has_trait(alcif_reg_EC, aBoxConsistency).
has_trait(alcif_reg_AS, acyclic_TBox).
has_trait(alcif_reg_AS, concept_SAT).
has_trait(alcif_reg_AC, acyclic_TBox).
has_trait(alcif_reg_AC, aBoxConsistency).
has_trait(alcif_reg_GS, concept_SAT).
has_trait(alcif_reg_GC, aBoxConsistency).
fragmentType(alciq_reg, dl).
type_has_trait(alciq_reg, regular).
type_has_trait(alciq_reg, T) :- type_has_trait(alciq, T).
fragment( (alciq_reg_ES; alciq_reg_EC; alciq_reg_AS; alciq_reg_AC; alciq_reg_GS; alciq_reg_GC), dl).
is_DL_type( (alciq_reg_ES; alciq_reg_EC; alciq_reg_AS; alciq_reg_AC; alciq_reg_GS; alciq_reg_GC), alciq_reg).
has_trait(alciq_reg_ES, empty_TBox).
has_trait(alciq_reg_ES, concept_SAT).
has_trait(alciq_reg_EC, empty_TBox).
has_trait(alciq_reg_EC, aBoxConsistency).
has_trait(alciq_reg_AS, acyclic_TBox).
has_trait(alciq_reg_AS, concept_SAT).
has_trait(alciq_reg_AC, acyclic_TBox).
has_trait(alciq_reg_AC, aBoxConsistency).
has_trait(alciq_reg_GS, concept_SAT).
has_trait(alciq_reg_GC, aBoxConsistency).
has_complexity(shiq_GC, exp_time, standard).
has_complexity(shiq_GS, exp_time, standard).
has_complexity(shoq_GS, exp_time, standard).
has_complexity(si_as, p_space, standard).
has_complexity(shoi_GC, exp_time, standard).
has_complexity(shoiq_ES, n_exp_time, standard).
type_has_property(shoq, finite_model, standard).
fragmentType(s, dl).
type_has_trait(s, transitive_roles).
fragment( (s_ES; s_EC; s_AS; s_AC; s_GS; s_GC), dl).
is_DL_type( (s_ES; s_EC; s_AS; s_AC; s_GS; s_GC), s).
has_trait(s_ES, empty_TBox).
has_trait(s_ES, concept_SAT).
has_trait(s_EC, empty_TBox).
has_trait(s_EC, aBoxConsistency).
has_trait(s_AS, acyclic_TBox).
has_trait(s_AS, concept_SAT).
has_trait(s_AC, acyclic_TBox).
has_trait(s_AC, aBoxConsistency).
has_trait(s_GS, concept_SAT).
has_trait(s_GC, aBoxConsistency).
fragmentType(si, dl).
type_has_trait(si, inverse_roles).
type_has_trait(si, T) :- type_has_trait(s, T).
fragment( (si_ES; si_EC; si_AS; si_AC; si_GS; si_GC), dl).
is_DL_type( (si_ES; si_EC; si_AS; si_AC; si_GS; si_GC), si).
has_trait(si_ES, empty_TBox).
has_trait(si_ES, concept_SAT).
has_trait(si_EC, empty_TBox).
has_trait(si_EC, aBoxConsistency).
has_trait(si_AS, acyclic_TBox).
has_trait(si_AS, concept_SAT).
has_trait(si_AC, acyclic_TBox).
has_trait(si_AC, aBoxConsistency).
has_trait(si_GS, concept_SAT).
has_trait(si_GC, aBoxConsistency).
fragmentType(sin, dl).
type_has_trait(sin, unqualified_number_restriction).
type_has_trait(sin, T) :- type_has_trait(si, T).
fragment( (sin_ES; sin_EC; sin_AS; sin_AC; sin_GS; sin_GC), dl).
is_DL_type( (sin_ES; sin_EC; sin_AS; sin_AC; sin_GS; sin_GC), sin).
has_trait(sin_ES, empty_TBox).
has_trait(sin_ES, concept_SAT).
has_trait(sin_EC, empty_TBox).
has_trait(sin_EC, aBoxConsistency).
has_trait(sin_AS, acyclic_TBox).
has_trait(sin_AS, concept_SAT).
has_trait(sin_AC, acyclic_TBox).
has_trait(sin_AC, aBoxConsistency).
has_trait(sin_GS, concept_SAT).
has_trait(sin_GC, aBoxConsistency).
fragmentType(shoi, dl).
type_has_trait(shoi, role_hierarchy).
type_has_trait(shoi, inverse_roles).
type_has_trait(shoi, nominals).
type_has_trait(shoi, T) :- type_has_trait(s, T).
fragment( (shoi_ES; shoi_EC; shoi_AS; shoi_AC; shoi_GS; shoi_GC), dl).
is_DL_type( (shoi_ES; shoi_EC; shoi_AS; shoi_AC; shoi_GS; shoi_GC), shoi).
has_trait(shoi_ES, empty_TBox).
has_trait(shoi_ES, concept_SAT).
has_trait(shoi_EC, empty_TBox).
has_trait(shoi_EC, aBoxConsistency).
has_trait(shoi_AS, acyclic_TBox).
has_trait(shoi_AS, concept_SAT).
has_trait(shoi_AC, acyclic_TBox).
has_trait(shoi_AC, aBoxConsistency).
has_trait(shoi_GS, concept_SAT).
has_trait(shoi_GC, aBoxConsistency).
fragmentType(shoq, dl).
type_has_trait(shoq, role_hierarchy).
type_has_trait(shoq, qualified_number_restriction).
type_has_trait(shoq, nominals).
type_has_trait(shoq, T) :- type_has_trait(s, T).
fragment( (shoq_ES; shoq_EC; shoq_AS; shoq_AC; shoq_GS; shoq_GC), dl).
is_DL_type( (shoq_ES; shoq_EC; shoq_AS; shoq_AC; shoq_GS; shoq_GC), shoq).
has_trait(shoq_ES, empty_TBox).
has_trait(shoq_ES, concept_SAT).
has_trait(shoq_EC, empty_TBox).
has_trait(shoq_EC, aBoxConsistency).
has_trait(shoq_AS, acyclic_TBox).
has_trait(shoq_AS, concept_SAT).
has_trait(shoq_AC, acyclic_TBox).
has_trait(shoq_AC, aBoxConsistency).
has_trait(shoq_GS, concept_SAT).
has_trait(shoq_GC, aBoxConsistency).
fragmentType(shiq, dl).
type_has_trait(shiq, role_hierarchy).
type_has_trait(shiq, qualified_number_restriction).
type_has_trait(shiq, inverse_roles).
type_has_trait(shiq, T) :- type_has_trait(s, T).
fragment( (shiq_ES; shiq_EC; shiq_AS; shiq_AC; shiq_GS; shiq_GC), dl).
is_DL_type( (shiq_ES; shiq_EC; shiq_AS; shiq_AC; shiq_GS; shiq_GC), shiq).
has_trait(shiq_ES, empty_TBox).
has_trait(shiq_ES, concept_SAT).
has_trait(shiq_EC, empty_TBox).
has_trait(shiq_EC, aBoxConsistency).
has_trait(shiq_AS, acyclic_TBox).
has_trait(shiq_AS, concept_SAT).
has_trait(shiq_AC, acyclic_TBox).
has_trait(shiq_AC, aBoxConsistency).
has_trait(shiq_GS, concept_SAT).
has_trait(shiq_GC, aBoxConsistency).
fragmentType(shoiq, dl).
type_has_trait(shoiq, nominals).
type_has_trait(shoiq, T) :- type_has_trait(shiq, T).
fragment( (shoiq_ES; shoiq_EC; shoiq_AS; shoiq_AC; shoiq_GS; shoiq_GC), dl).
is_DL_type( (shoiq_ES; shoiq_EC; shoiq_AS; shoiq_AC; shoiq_GS; shoiq_GC), shoiq).
has_trait(shoiq_ES, empty_TBox).
has_trait(shoiq_ES, concept_SAT).
has_trait(shoiq_EC, empty_TBox).
has_trait(shoiq_EC, aBoxConsistency).
has_trait(shoiq_AS, acyclic_TBox).
has_trait(shoiq_AS, concept_SAT).
has_trait(shoiq_AC, acyclic_TBox).
has_trait(shoiq_AC, aBoxConsistency).
has_trait(shoiq_GS, concept_SAT).
has_trait(shoiq_GC, aBoxConsistency).
trait(atomic_negation, feature, dl).
trait(nominals, feature, dl).
trait(inverse_roles, feature, dl).
trait(transitive_roles, feature, dl).
trait(functionality, feature, dl).
trait(least_fix_point_op, feature, dl).
trait(role_hierarchy, feature, dl).
trait(complex_role_inclusion, feature, dl).
trait(role_intersection, feature, dl).
trait(role_union, feature, dl). 
trait(role_complement, feature, dl).
trait(role_chain, feature, dl).
trait(reflexive_transitive_closure, feature, dl).
trait(concept_identity, feature, dl).
trait(unqualified_number_restriction, feature, dl).
trait(qualified_number_restriction, feature, dl).
trait(regular, feature, dl).
trait(no_negation, restriction, dl).
trait(no_disjunction, restriction, dl).
trait(no_bottom_concept, restriction, dl).
trait(no_existential_restriction, restriction, dl).
trait(no_universal_restriction, restriction, dl).
trait(horn, restriction, dl).
subsumed_trait(functionality, unqualified_number_restriction).
subsumed_trait(unqualified_number_restriction, qualified_number_restriction).
subsumed_trait(acyclic_TBox, empty_TBox).
subsumed_trait(role_union, regular).
subsumed_trait(role_chain, regular).
subsumed_trait(reflexive_transitive_closure, regular).
subsumed_trait(concept_identity, regular).
type_has_trait(T, regular) :- type_has_trait(T, role_union), type_has_trait(T, role_chain), 
    type_has_trait(T, reflexive_transitive_closure), type_has_trait(T, concept_identity).
model_property(finite_model; tree_model).
-has_complexity(L, undecidable, standard) :- has_model_property(L, finite_model, standard).
has_model_property(L2, P, S) :- has_model_property(L1, P, S), higher_logic(L1, L2).
-has_model_property(L1, P, S) :- -has_model_property(L2, P, S), higher_logic(L1, L2).
has_model_property(L, P, S) :- type_has_property(T, P, S), is_DL_type(L, T).
not_has_model_property(L, P, S) :- -has_model_property(L, P, S).
trait(empty_TBox, restriction, dl).
trait(acyclic_TBox, restriction, dl).
trait(concept_SAT, feature, dl).
trait(aBoxConsistency, feature, dl).
:- fragment(L, dl), -has_trait(L, concept_SAT), -has_trait(L, aBoxConsistency).
subsumed_trait(concept_SAT, aBoxConsistency).
has_trait(L, Trait) :- is_DL_type(L, Type), type_has_trait(Type, Trait).
translation(L1, L2) :- is_internalizable(Type), is_DL_type(L1, Type), is_DL_type(L2, Type),
    has_trait(L2, empty_TBox), has_trait(L1, aBoxConsistency), has_trait(L2, aBoxConsistency).
translation(L1, L2) :- is_internalizable(Type), is_DL_type(L1, Type), is_DL_type(L2, Type),
    has_trait(L2, empty_TBox), has_trait(L1, concept_SAT), has_trait(L2, concept_SAT),
    -has_trait(L1, aBoxConsistency), -has_trait(L2, aBoxConsistency).
is_internalizable(Type) :- type_has_trait(Type, inverse_roles), type_has_trait(Type, nominals).
is_internalizable(Type) :- type_has_trait(Type, least_fix_point_op).
is_internalizable(Type) :- type_has_trait(Type, transitive_roles), type_has_trait(Type, role_hierarchy).
is_internalizable(Type) :- type_has_trait(Type, reflexive_transitive_closure), type_has_trait(Type, role_union).
semantics(fixed_domain, dl).
obj(X) :- model_property(X).
obj(X) :- fragmentType(X, _).
has_complexity(action_guarded_fragment, exp_time, standard).
is_complete(guarded_fragment, exp_exp_time, standard).
is_complete(fo2, n_exp_time, standard).
has_complexity(fol, undecidable, standard).
trait(fluted, restriction, fol). 
trait(k_bar, restriction, fol). 
trait(two_variable, restriction, fol). 
trait(horn, restriction, fol). 
trait(unary_negation, restriction, fol).
trait(existential_positive, restriction, fol).
trait(guarded, restriction, fol). 
trait(action_guarded, restriction, fol).
trait(no_functions, restriction, fol).
trait(monadic, restriction, fol).
trait(singular_binary, restriction, fol).
trait(equality, feature, fol).
trait(fixed_point, feature, fol).
trait(counting_quantifiers, feature, fol).
subsumed_trait(action_guarded, guarded). %as far as I understand
subsumed_trait(existential_positive, unary_negation).
fragment(guarded_fragment, fol).
has_trait(guarded_fragment, guarded).
fragment(action_guarded_fragment, fol).
has_trait(action_guarded_fragment, action_guarded). %under certain reasonable assumptions, see Grädel
fragment(fo2, fol).
has_trait(fo2, two_variable).
fragment(fol, fol).
is_complete(ml_mu, exp_time, standard).
trait(computation_tree_paths, feature, modal_propositional).
trait(fixed_point_mu, feature, modal_propositional).
fragment(ctl, modal_propositional).
has_trait(ctl, computation_tree_paths).
fragment(ml_mu, modal_propositional).
has_trait(ml_mu, fixed_point_mu).
family(fol; dl; modal_propositional; modal_fo).
:- fragment(X, Y1), fragment(X, Y2), Y1 != Y2.
has_trait(L, T1) :- has_trait(L, T2), subsumed_trait(T1, T2).
semantics(standard, F) :- family(F).
interesting_complexity(L, C, S) :- has_complexity(L, C, S), {complexity_class(C2): has_complexity(L, C2, S), C != C2, smaller_complexity(C2, C)} 0.
interesting_hardness(L, C, S) :- is_hard(L, C, S), {complexity_class(C2): is_hard(L, C2, S), C != C2, smaller_complexity(C, C2)} 0.
obj(X) :- family(X).
obj(X) :- fragment(X, _).
obj(X) :- trait(X, _, _).
obj(X) :- semantics(X, _).
complexity_class(p_time;
  n_p_time;
  co_n_p_time;
  p_space;
  exp_time;
  n_exp_time;
  exp_exp_time;
  n_exp_exp_time;
  decidable;
  undecidable).
smaller_complexity(p_time, n_p_time).
smaller_complexity(p_time, co_n_p_time).
smaller_complexity(p_time , p_space).
smaller_complexity(n_p_time, p_space).
smaller_complexity(co_n_p_time, p_space).
smaller_complexity(p_space , exp_time).
smaller_complexity(exp_time, n_exp_time).
smaller_complexity(n_exp_time, exp_exp_time).
smaller_complexity(exp_exp_time, n_exp_exp_time).
smaller_complexity(C, decidable) :- complexity_class(C), C != undecidable.
-smaller_complexity(X, undecidable) :- complexity_class(X), X != undecidable.
-smaller_complexity(undecidable, X) :- complexity_class(X), X != undecidable.
:- has_complexity(L, undecidable, S), has_complexity(L, decidable, S), fragment(L, F), semantics(S, F).
-has_complexity(L, undecidable, S) :- has_complexity(L, decidable, S), fragment(L, F), semantics(S, F).
-has_complexity(L, decidable, S) :- has_complexity(L, undecidable, S), fragment(L, F), semantics(S, F).
equal_complexity(X, X) :- complexity_class(X).
equal_complexity (X, Y) :- equal_complexity(Y, X).
equal_complexity(X, Z) :- equal_complexity(X, Y), equal_complexity(Y,Z).
smaller_complexity(C11, C2) :- smaller_complexity(C1, C2), equal_complexity(C1, C11).
smaller_complexity(C1, C22) :- smaller_complexity(C1, C2), equal_complexity(C2, C22).
-equal_complexity(p_time, exp_time).
-equal_complexity(exp_time, exp_exp_time).
-equal_complexity(n_p_time, n_exp_time).
smaller_complexity(X,X):- complexity_class(X).
:- smaller_complexity(X,Y), smaller_complexity(Y,X), not equal_complexity(X, Y).
smaller_complexity(X,Z):- smaller_complexity(X,Y), smaller_complexity(Y,Z).
is_complete(L, C, S) :- has_complexity(L, C, S), is_hard(L, C, S).
2 {has_complexity(L, C, S); is_hard(L, C, S)} :- is_complete(L, C, S).
has_complexity(L, C2, S) :- has_complexity(L, C1, S), smaller_complexity(C1, C2), C2 != undecidable.
is_hard(L, C1, S) :- is_hard(L, C2, S), smaller_complexity(C1, C2).
obj(X) :- complexity_class(X).
has_extra_features(L1, L2):- has_trait(L1,A),
                          -has_trait(L2, A),
                          trait(A, feature, F),
                          fragment(L1, F), fragment(L2, F).
has_extra_restrictions(L1,L2):- has_trait(L1,A),
                          -has_trait(L2, A),
                          trait(A, restriction, F),
                          fragment(L1, F), fragment(L2, F).
-has_trait(L, T) :- not has_trait(L, T), fragment(L, F), trait(T, _, F).
-has_extra_features(L1, L2) :- not has_extra_features(L1, L2), fragment(L1, _), fragment(L2, _).
-has_extra_restrictions(L1, L2) :- not has_extra_restrictions(L1, L2), fragment(L1, _), fragment(L2, _).
:- has_trait(L, T), not trait(T, feature, _), not trait(T, restriction, _).
higher_logic(X, Y) :- has_extra_features(X, Y),
                    not has_extra_features(Y, X), not has_extra_restrictions(X, Y).
higher_logic(X, Y) :- has_extra_restrictions(Y, X),
                    not has_extra_restrictions(X, Y), not has_extra_features(Y, X).
higher_logic(X,X):- fragment(X, _).
:- higher_logic(X,Y), higher_logic(Y,X), X != Y.
higher_logic(X,Z):- higher_logic(X,Y), higher_logic(Y,Z).
has_complexity (L2, C, S) :- has_complexity (L1, C, S), higher_logic(L1, L2), C != undecidable.
is_hard(L1, C, S) :- is_hard (L2, C, S), higher_logic(L1, L2).
has_complexity(L1, undecidable, S) :- has_complexity(L2, undecidable, S), higher_logic(L1, L2).
most_interesting_hardness(L, C1, S) :- is_hard(L, C1, S), {is_hard(L, C2, S): is_hard(L, C2, S), smaller_complexity(C1, C2), C1 != C2} 0.
most_interesting_complexity(L, C2, S) :- has_complexity(L, C2, S), {has_complexity(L, C1, S): has_complexity(L, C1, S), smaller_complexity(C1, C2), C1 != C2} 0.
most_interesting_completeness(L, C, S) :- most_interesting_hardness(L, C, S), most_interesting_complexity(L, C, S).
    % chain of translations can be connected
translation(X, Z) :- translation(X, Y), translation(Y, Z).
    % hardness is preserved by translation (for complexity classes >= P)
is_hard(Y, C) :- is_hard(X, C), translation(X, Y), smaller_complexity(p_time, C).
    % complexity of translated logic gives upper bound for translation logic
has_complexity(X, C) :- has_complexity(Y, C), translation(X, Y), C != undecidable.
translation(L, fo2) :- is_DL_type(L, alc).
translation(L, guarded_fragment) :- is_DL_type(L, alc).
translation(ctl, ml_mu).        %CTL is a subset of mu fixed point modal logic
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
type_has_trait(alcoiq_reg, T) :- type_has_trait(alcoiq, T).
type_has_trait(alcoiq_reg, regular).
