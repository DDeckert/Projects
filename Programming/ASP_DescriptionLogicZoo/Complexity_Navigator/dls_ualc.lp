%This file defines UALC and all its derivatives

%UALC
%<block start>
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
%<block end>


%UALCF
%<block start>
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
%<block end>


%UALCN
%<block start>
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
%<block end>


%UALCQ
%<block start>
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
%<block end>


%UALCI
%<block start>
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
%<block end>


%UALCIF
%<block start>
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
%<block end>


%UALCIQ
%<block start>
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
%<block end>


%UALCO
%<block start>
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
%<block end>


%UALCOF
%<block start>
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
%<block end>


%UALCOQ
%<block start>
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
%<block end>


%UALCOI
%<block start>
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
%<block end>


%UALCOIF
%<block start>
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
%<block end>


%UALCOIQ
%<block start>
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
%<block end>

