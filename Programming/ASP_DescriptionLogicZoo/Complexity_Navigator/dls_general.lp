%This file defines ALC, ALCQ, R, ALCF, ALCH and ALCN 

%ALC
%<block start>
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
%<block end>


%ALCQ
%<block start>
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
%<block end>


%R
%<block start>
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
%<block end>


%ALCF
%<block start>
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
%<block end>


%ALCN
%<block start>
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
%<block end>


%ALCH
%<block start>
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
%<block end>

