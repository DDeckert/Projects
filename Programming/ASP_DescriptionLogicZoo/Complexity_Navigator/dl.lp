%This file contains some concepts about restrictions and features in description logics
%base logic is ALC
%non-corpus information is included in the "dl_noncorpus.lp"


%trait (trait_name, type, family)
%fragment trait of type (feature / restriction) for fragments of the specified family

#include "dls_general.lp".
#include "dls_alco.lp".
#include "dls_ualc.lp".
#include "dls_alci.lp".
#include "dls_s.lp".


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

%%trait subsumption relationships
%qualified number restriction can express unqualified number restriction and functionality (i.e. exactly-one-restriction)
subsumed_trait(functionality, unqualified_number_restriction).
subsumed_trait(unqualified_number_restriction, qualified_number_restriction).
%every empty TBox is also acyclic (and both are restrictions of the general case)
subsumed_trait(acyclic_TBox, empty_TBox).
%regular DLs have the following properties
subsumed_trait(role_union, regular).
subsumed_trait(role_chain, regular).
subsumed_trait(reflexive_transitive_closure, regular).
subsumed_trait(concept_identity, regular).
type_has_trait(T, regular) :- type_has_trait(T, role_union), type_has_trait(T, role_chain), 
    type_has_trait(T, reflexive_transitive_closure), type_has_trait(T, concept_identity).


%%rules about model properties (finite / tree model property)
%%asserted about individual DL instances
model_property(finite_model; tree_model).

-has_complexity(L, undecidable, standard) :- has_model_property(L, finite_model, standard).

has_model_property(L2, P, S) :- has_model_property(L1, P, S), higher_logic(L1, L2).
-has_model_property(L1, P, S) :- -has_model_property(L2, P, S), higher_logic(L1, L2).

has_model_property(L, P, S) :- type_has_property(T, P, S), is_DL_type(L, T).

not_has_model_property(L, P, S) :- -has_model_property(L, P, S).

% base reasoning task is wrt a general TBox
% restricted cases / other reasoning tasks can be stated as a separate logic
trait(empty_TBox, restriction, dl).
trait(acyclic_TBox, restriction, dl).
trait(concept_SAT, feature, dl).
trait(aBoxConsistency, feature, dl).

:- fragment(L, dl), -has_trait(L, concept_SAT), -has_trait(L, aBoxConsistency).

%every concept satisfiability problem can be stated as an equivalent ABox consistency problem 
%(for an ABox containing exactly the concept assertion)
subsumed_trait(concept_SAT, aBoxConsistency).


% separate instances of same logic "type" are identified with is_DL_type(dl, dl_type)
%traits are passed from type to all its instances
has_trait(L, Trait) :- is_DL_type(L, Type), type_has_trait(Type, Trait).

% the knowledge base can be internalized (turned into a single concept) 
% then, all TBox types have the same results as the empty TBox
translation(L1, L2) :- is_internalizable(Type), is_DL_type(L1, Type), is_DL_type(L2, Type),
    has_trait(L2, empty_TBox), has_trait(L1, aBoxConsistency), has_trait(L2, aBoxConsistency).
translation(L1, L2) :- is_internalizable(Type), is_DL_type(L1, Type), is_DL_type(L2, Type),
    has_trait(L2, empty_TBox), has_trait(L1, concept_SAT), has_trait(L2, concept_SAT),
    -has_trait(L1, aBoxConsistency), -has_trait(L2, aBoxConsistency).

is_internalizable(Type) :- type_has_trait(Type, inverse_roles), type_has_trait(Type, nominals).
is_internalizable(Type) :- type_has_trait(Type, least_fix_point_op).
is_internalizable(Type) :- type_has_trait(Type, transitive_roles), type_has_trait(Type, role_hierarchy).
is_internalizable(Type) :- type_has_trait(Type, reflexive_transitive_closure), type_has_trait(Type, role_union).

%fixed domain semantics is a more restrictive form of semantics in DL
semantics(fixed_domain, dl).




%Collected all defined categories of objects (for checking name collisions in the python software)
obj(X) :- model_property(X).
obj(X) :- fragmentType(X, _).


