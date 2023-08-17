#include "test_r.lp".
#include "test_sh.lp".
#include "test_shi.lp".
#include "test_si.lp".
#include "test_alcf.lp".
#include "test_alcq.lp".
#include "test_ualc.lp".
#include "test_alco.lp".



#show less_known/1.
#show more_known/1.
%#show display_complete/3.

display_complete(L, C, S) :- is_complete(L, C, S), display_logic(L).