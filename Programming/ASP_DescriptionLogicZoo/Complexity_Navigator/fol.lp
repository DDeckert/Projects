%This file contains some concepts about restrictions and features in FOL
%base logic is FOL
%non-corpus information is included in the "fol_noncorpus.lp"

%trait (trait, type, family)
%fragment trait of type (feature / restriction) for fragments of the specified family
trait(fluted, restriction, fol). 
trait(k_bar, restriction, fol). 
trait(two_variable, restriction, fol). 
trait(horn, restriction, fol). 
trait(unary_negation, restriction, fol).
trait(existential_positive, restriction, fol).
%prefix classes meta-trait 
%(?)

trait(guarded, restriction, fol). 
trait(action_guarded, restriction, fol).
trait(no_functions, restriction, fol).
trait(monadic, restriction, fol).
trait(singular_binary, restriction, fol).

trait(equality, feature, fol).
trait(fixed_point, feature, fol).
trait(counting_quantifiers, feature, fol).

%trait subsumption
subsumed_trait(action_guarded, guarded). %as far as I understand
subsumed_trait(existential_positive, unary_negation).

%fragment(logic, family) is used to identify a logic fragment and state its affiliation
%has_trait(logic, trait)
fragment(guarded_fragment, fol).
has_trait(guarded_fragment, guarded).


fragment(action_guarded_fragment, fol).
has_trait(action_guarded_fragment, action_guarded). %under certain reasonable assumptions, see Grädel


fragment(fo2, fol).
has_trait(fo2, two_variable).



fragment(fol, fol).
