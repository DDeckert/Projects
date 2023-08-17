#Instructions for the new Knowledge Base#
##Querying the Knowledge Base##
To run any query, first edit the *query.lp*. 
To display additional atoms, add a new line with `#show <P>/<N>.` for predicate `P` of arity `N`. If this predicate is to be filtered and displayed only for certain individuals `<L>`, add the following:
```
target(<L>).
interesting_<P>(X) :- <P>(X), target(X).
#display interesting_<P>/<N>.
```
To run this query, make sure you have clingo set up and run `clingo include.lp query.lp` in the command line.

##Adding to the Knowledge Base##
First, make sure that python and the clingo extension for python are properly set up. 
Then, run the python script *add_content.py* in the command line. All new information is stored in the *added.lp* file.