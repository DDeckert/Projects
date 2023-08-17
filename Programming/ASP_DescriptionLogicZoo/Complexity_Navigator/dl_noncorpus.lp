%This file contains all complexity results and model properties for DLs. This information is not part of the a priori corpus
%(base logic is ALC)

%Complexity Results (S)
has_complexity(shiq_GC, exp_time, standard).
has_complexity(shiq_GS, exp_time, standard).
has_complexity(shoq_GS, exp_time, standard).
has_complexity(si_as, p_space, standard).
has_complexity(shoi_GC, exp_time, standard).
has_complexity(shoiq_ES, n_exp_time, standard).

%Model Property results (S)
type_has_property(shoq, finite_model, standard).

%Complexity Results (from the online DL navigator and previous program)
has_complexity(alcoq_AC, p_space, standard).
has_complexity(alcoq_AS, p_space, standard).
has_complexity(alco_GC, exp_time, standard).
has_complexity(alcoq_EC, p_space, standard).
has_complexity(alcoq_GC, exp_time, standard).
is_hard(alcoif_ES, n_exp_time, standard).
has_complexity(alcoiq_EC, n_exp_time, standard).

%Model Property results
-has_model_property(alcoif_GS, finite_model, standard).
-has_model_property(alcoif_GC, finite_model, standard).
-has_model_property(alcoin_GS, finite_model, standard).
-has_model_property(alcoin_GC, finite_model, standard).
-has_model_property(alcoiq_GS, finite_model, standard).
-has_model_property(alcoiq_GC, finite_model, standard).

%Model Property Results
type_has_property(ualc, finite_model, standard).
type_has_property(ualc, tree_model, standard).
-type_has_property(ualco, tree_model, standard).
-type_has_property(ualcoif, finite_model, standard).

%Complexity Results (from the online DL navigator and previous program)
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

%Complexity Results (from the online DL navigator and previous program)
has_complexity(alci_AS, p_space, standard).
has_complexity(alci_EC, p_space, standard).
has_complexity(alci_AC, p_space, standard).
has_complexity(alciq_ES, p_space, standard).
has_complexity(alcif_EC, p_space, standard).
has_complexity(alcif_AC, p_space, standard).
has_complexity(alcin_AC, p_space, standard).
has_complexity(alciq_AC, p_space, standard).
has_complexity(alciq_reg_GS, exp_time, standard).

%Model Property results
-has_model_property(alcif_gs, finite_model, standard).
-has_model_property(alcif_gc, finite_model, standard).
-has_model_property(alcin_gs, finite_model, standard).
-has_model_property(alcin_gc, finite_model, standard).
-has_model_property(alciq_gs, finite_model, standard).
-has_model_property(alciq_gc, finite_model, standard).
type_has_property(alcif_reg, tree_model, standard).

%Complexity results (from the online DL navigator and previous program)
has_complexity(alcq_AS, p_space, standard).
has_complexity(alc_GS, exp_time, standard).
has_complexity(alcn_ES, p_space, standard).
is_hard(alcn_ES, p_space, standard).
has_complexity(r_GS, decidable, standard).
is_hard(alc_ES, p_space, standard).

%Model Property Results
type_has_property(alc, finite_model, standard).
type_has_property(alc, tree_model, standard).
type_has_property(alcq, finite_model, standard).