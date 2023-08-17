%This file contains some concepts about restrictions and features in modal logic
%Non-corpus information is included in the "modal_noncorpus.lp"

%trait (trait_name, type, family)
%fragment trait of type (feature / restriction) for fragments of the specified family
trait(computation_tree_paths, feature, modal_propositional).
trait(fixed_point_mu, feature, modal_propositional).

%fragment(logic, family) is used to identify a logic fragment and state its affiliation
%has_trait(logic, trait)
fragment(ctl, modal_propositional).
has_trait(ctl, computation_tree_paths).


fragment(ml_mu, modal_propositional).
has_trait(ml_mu, fixed_point_mu).

