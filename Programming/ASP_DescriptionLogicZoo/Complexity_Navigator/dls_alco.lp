%This file defines ALCO and all its derivatives

%ALCO
%<block start>
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
%<block end>


%ALCOF
%<block start>
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
%<block end>


%ALCON
%<block start>
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

%<block end>

%ALCOQ
%<block start>
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
%<block end>


%ALCOI
%<block start>
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
%<block end>


%ALCOIF
%<block start>
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
%<block end>


%ALCOIN
%<block start>
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
%<block end>


%ALCOIQ
%<block start>
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
%<block end>

