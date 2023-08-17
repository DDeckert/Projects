%This file defines S, SI and SIN

%S
%<block start>
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
%<block end>


%SI
%<block start>
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
%<block end>


%SIN
%<block start>
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
%<block end>


%SHOI
%<block start>
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
%<block end>


%SHOQ
%<block start>
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
%<block end>


%SHIQ
%<block start>
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
%<block end>


%SHOIQ
%<block start>
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
%<block end>

