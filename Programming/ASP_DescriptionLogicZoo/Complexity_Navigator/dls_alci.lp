
%This file defines ALCI, ALCIN, ALCIF, ALCIQ, regular ALCIF and regular ALCIQ

%ALCI
%<block start>
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
%<block end>

%ALCIN
%<block start>
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
%<block end>


%ALCIF
%<block start>
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
%<block end>


%ALCIQ
%<block start>
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
%<block end>


%ALCIF
%<block start>
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
%<block end>


%ALCIQ
%<block start>
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
%<block end>

