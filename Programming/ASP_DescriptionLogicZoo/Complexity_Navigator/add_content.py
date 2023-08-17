import utilities
import datetime
import clingo
import math
import copy
import os

import logging
logging.getLogger("clingo").setLevel(logging.ERROR)

def main():
    acc = False
    while(not acc):
        print("What would you like to do:")
        for option in sorted(options):
            print(str(option)+" - "+options[option][0])
        choice = input()
        try:
            choiceInt = int(choice)
            acc = (choiceInt in options)
            if(not acc):
                print("The input must be one of the action's numbers.")
        except:
            print("The input must be a number.")

    if choiceInt != 9 and choiceInt != 11:  #regular calculations
        options[choiceInt][1]()
    else:                                   #jsutifications with a corpus
        options[choiceInt][1](corpusFile ="corpus.lp", noncorpusFile = "noncorpus.lp")

# This function reduces the program to one explanation of a given result
def check_result(corpusFile = "", noncorpusFile = "include.lp"):
    necessary = ""
    result = input("What result would you like to check? \n")
    result_Symbol = utilities.strToSymbol(result)
    if not ( (corpusFile == "" or os.path.isfile(corpusFile)) and os.path.isfile(noncorpusFile)):
        raise ValueError

    corpus = ""
    if corpusFile != "":
        corpus = utilities.lpToString(corpusFile)
    program = utilities.lpToString(noncorpusFile)
    entailed = utilities.checkEntailment(program+corpus, result_Symbol)

    if entailed[1] != 1:
        print("The model does not have an unique model. Aborting")
        raise ValueError
    if not entailed[0]:
        print("The knowledge base does not entail the result.")
    if entailed[1]==1 and entailed[0]:
        program_List = []
        constraints = ""
        isMultLine = False
        multLine = ""
        for line in program.split('\n'):
            if len(line.replace(' ', "")) == 0 or line.replace(' ', "")[0] == '#':
                line = ""
            else:
                if '.' not in line:
                    isMultLine = True
                if isMultLine:
                    multLine += (line+'\n')
                    if '.' in line:
                        isMultLine = False
                        if multLine[0] == ':':
                            constraints += multLine
                        else:
                            program_List.append(multLine)
                        multLine = ""
                else:
                    if line[0] == ':':
                            constraints += line
                    else:
                        program_List.append(line)
        
        program = '\n'.join(program_List)
        program += '\n'

        # Calculate a minimal set of rules to entail the result by test-removing all rules and only keeping the necessary ones
        increment = 10
        border = 10
        print("\nChecking program rules sequentially for necessity:\n")
        for i in range(len(program_List)):
            if(i >= border/100 * len(program_List)):
                print(str(border)+"% done")
                border += increment

            program = ( '\n'.join(program_List[:i]) )+( '\n'.join(program_List[(i+1):]) )+'\n'

            #if utilities.checkEntailment(program + constraints, result_Symbol)[0]:
            if utilities.checkEntailment(program+corpus, result_Symbol)[0]:
                program_List[i] = ""

        program = '\n'.join(filter(lambda string: string != "", program_List))
        if corpus == "":
            print("#Justification:\n"+program)
        else:
            print("#Corpus:\n"+corpus+"\n\n#Justification:\n"+program)


    return necessary

#modify program so that all justifications for a result can be checked later using asprin
def modify_for_justifications(corpusFile = "", outputFile = "program.lp", noncorpusFile = "include.lp"):
    necessary = ""
    result = input("What result would you like to check? \n")
    result_Symbol = utilities.strToSymbol(result)
    if not ((corpusFile == "" or os.path.isfile(corpusFile)) and os.path.isfile(noncorpusFile)):
        print("Error: One of the specified files does not exist")
        raise ValueError
    
    corpus = ""
    if corpusFile != "":
        corpus = utilities.lpToString(corpusFile)
    program = utilities.lpToString(noncorpusFile)

    entailed = utilities.checkEntailment(program+corpus, result_Symbol)
    if entailed[1] != 1:
        print("The model does not have an unique model. Aborting")
        raise ValueError
    if not entailed[0]:
        print("The knowledge base does not entail the result.")
    if entailed[1]==1 and entailed[0]:
        program_List = []
        isMultLine = False
        multLine = ""
        for line in program.split('\n'):
            if len(line.replace(' ', "")) == 0 or line.replace(' ', "")[0] == '#':
                line = ""
            else:
                if '.' not in line:
                    isMultLine = True
                if isMultLine:
                    multLine += (line+'\n')
                    if '.' in line:
                        isMultLine = False
                        program_List.append(multLine)
                        multLine = ""
                else:
                    program_List.append(line)
        print("\nModifying program with unique licenses for all rules. The result is saved in the program.lp")
        program = corpus+"\n"
        for i in range(len(program_List)):
            if((":-") in program_List[i]):
                program += (program_List[i].replace(".", ", activate("+str(i)+").")+"\n")
            else:
                program += (program_List[i].replace(".", ":- activate("+str(i)+").")+"\n")

        program += "{activate(I)}:- I = 0.. "+str(len(program_List)-1)+".\n"
        program += ":- not "+result+".\n"
        program += "#show activate/1."

        file = open(file = outputFile, mode = "w")
        file.write(program)
        file.close()
        print("Done")

    




def create_new_dl():
    acc = False
    while not acc:
        new_dl = input("What DL would you like to add? ")
        new_dl = ''.join(e for e in new_dl if (e.isalnum() or (e=='_')))
        if not new_dl[0].isalpha():
            print("The resulting constant name would not start with a letter!")
        else:
            new_dl = new_dl[0].lower()+new_dl[1:]
            print("The resulting constant name would be \""+new_dl+"\"")
            if utilities.check(new_dl, "fragmentType", 2):
                print("The specified logic already exists.")
            else:
                if utilities.check(new_dl, "obj", 1):
                    print("The resulting constant name is already in use.")
                else:
                    acc=True

    dl_string = "fragmentType("+new_dl+", dl).\n"+\
        "fragment( ("+new_dl+"_ES; "+new_dl+"_EC; "+new_dl+"_AS; "+new_dl+"_AC; "+new_dl+"_GS; "+new_dl+"_GC), dl). \n"+\
        "is_DL_type( ("+new_dl+"_ES; "+new_dl+"_EC; "+new_dl+"_AS; "+new_dl+"_AC; "+new_dl+"_GS; "+new_dl+"_GC), "+new_dl+").\n"+\
        "has_trait("+new_dl+"_ES, empty_TBox).\n"+\
        "has_trait("+new_dl+"_ES, concept_SAT).\n"+\
        "has_trait("+new_dl+"_EC, empty_TBox).\n"+\
        "has_trait("+new_dl+"_EC, aBoxConsistency).\n"+\
        "has_trait("+new_dl+"_AS, acyclic_TBox).\n"+\
        "has_trait("+new_dl+"_AS, concept_SAT).\n"+\
        "has_trait("+new_dl+"_AC, acyclic_TBox).\n"+\
        "has_trait("+new_dl+"_AC, aBoxConsistency).\n"+\
        "has_trait("+new_dl+"_GS, concept_SAT).\n"+\
        "has_trait("+new_dl+"_GC, aBoxConsistency).\n"
    now=datetime.datetime.now()
    now_string = now.strftime("%Y-%m-%d %H:%M:%S")
    addage = "%New DL (created: "+ now_string +")\n"+\
                dl_string+"\n"
    file = open("added.lp", "a")
    file.write(addage)
    file.close()
    print("DL has been successfully added.")
    return new_dl


def create_new_fol():
    acc = False
    while not acc:
        new_fol = input("What First Order Logic fragment would you like to add? \n")
        new_fol = ''.join(e for e in new_fol if (e.isalnum() or (e=='_')))
        if not new_fol[0].isalpha():
            print("The resulting constant name would not start with a letter!")
        else:
            new_fol = new_fol[0].lower()+new_fol[1:]
            print("The resulting constant name would be \""+new_fol+"\"")
            if utilities.check(new_fol, "fragment", 2):
                print("The specified logic already exists.")
            else:
                if utilities.check(new_fol, "obj", 1):
                    print("The resulting constant name is already in use.")
                else:
                    acc=True
    modl_string = "fragment("+ new_fol+", fol)."
    now=datetime.datetime.now()
    now_string = now.strftime("%Y-%m-%d %H:%M:%S")
    addage = "%New FO logic (created: "+ now_string +")\n"+\
                modl_string+"\n"
    file = open("added.lp", "a")
    file.write(addage)
    file.close()
    print("New First Order Logic has been successfully added.")
    return new_fol

def create_new_modal_logics():
    acc = False
    while not acc:
        new_modl = input("What Modal Logic fragment would you like to add? \n")
        new_modl = ''.join(e for e in new_modl if (e.isalnum() or (e=='_')))
        if not new_modl[0].isalpha():
            print("The resulting constant name would not start with a letter!")
        else:
            new_modl = new_modl[0].lower()+new_modl[1:]
            print("The resulting constant name would be \""+new_modl+"\"")
            if utilities.check(new_modl, "fragment", 2):                    #This does not distinguish between FOL, Modal and DLs
                print("The specified logic already exists.")
            else:
                if utilities.check(new_modl, "obj", 1):
                    print("The resulting constant name is already in use.")
                else:
                    acc=True
    modl_string = "fragment("+ new_modl+", modal_propositional)."
    now=datetime.datetime.now()
    now_string = now.strftime("%Y-%m-%d %H:%M:%S")
    addage = "%New propositional modal logic (created: "+ now_string +")\n"+\
                modl_string+"\n"
    file = open("added.lp", "a")
    file.write(addage)
    file.close()
    print("New modal logic has been successfully added.")
    return new_modl

def create_new_semantics():
    acc = False
    while not acc:
        new_seman = input("What semantics would you like to add? \n")
        new_seman = ''.join(e for e in new_seman if (e.isalnum() or (e=='_')))
        if not new_seman[0].isalpha():
            print("The resulting constant name would not start with a letter!")
        else:
            new_seman = new_seman[0].lower()+new_seman[1:]
            print("The resulting constant name would be \""+new_seman+"\"")
            if utilities.check(new_seman, "semantics", 2):
                print("The specified semantics already exists.")
            else:
                if utilities.check(new_seman, "obj", 1):
                    print("The resulting constant name is already in use.")
                else:
                    acc=True
    acc2 = False
    while not acc2:
        family = input("What family of logic fragments does this semantics belong to? \n")
        if not utilities.check(family, "family", 1):
            print("This is not the name of a family of logic fragments")
        else:
            acc2 = True
    
    seman_string = "semantics("+ new_seman+", "+ \
                    family+")."
    now=datetime.datetime.now()
    now_string = now.strftime("%Y-%m-%d %H:%M:%S")
    addage = "%New semantics (created: "+ now_string +")\n"+\
                seman_string+"\n"
    file = open("added.lp", "a")
    file.write(addage)
    file.close()
    print("New semantics type has been successfully added.")
    return new_seman

def create_new_complexity_class():
    acc = False
    while not acc:
        new_comp = input("What Complexity Class would you like to add? \n")
        new_comp = ''.join(e for e in new_comp if (e.isalnum() or (e=='_')))
        if not new_comp[0].isalpha():
            print("The resulting constant name would not start with a letter!")
        else:
            new_comp = new_comp[0].lower()+new_comp[1:]
            print("After lower: "+new_comp)
            print("The resulting constant name would be \""+new_comp+"\"")
            if utilities.check(new_comp, "complexity_class", 2):
                print("The specified complexity class already exists.")
            else:
                if utilities.check(new_comp, "obj", 1):
                    print("The resulting constant name is already in use.")
                else:
                    acc=True
                    
    comp_string = "complexity_class("+ new_comp+")."
    now=datetime.datetime.now()
    now_string = now.strftime("%Y-%m-%d %H:%M:%S")
    addage = "%New trait (created: "+ now_string +")\n"+\
                comp_string+"\n"
    file = open("added.lp", "a")
    file.write(addage)
    file.close()
    print("New complexity class has been successfully added.")
    return new_comp

def create_new_trait():
    acc = False
    while not acc:
        new_trait = input("What trait would you like to add? \n")
        new_trait = ''.join(e for e in new_trait if (e.isalnum() or (e=='_')))
        if not new_trait[0].isalpha():
            print("The resulting constant name would not start with a letter!")
        else:
            new_trait = new_trait[0].lower()+new_trait[1:]
            print("The resulting constant name would be \""+new_trait+"\"")
            if utilities.check(new_trait, "trait", 3):
                print("The specified trait already exists.")
            else:
                if utilities.check(new_trait, "obj", 1):
                    print("The resulting constant name is already in use.")
                else:
                    acc=True
    acc2 = False
    while not acc2:
        family = input("What family of logic fragments does this trait belong to? \n")
        if not utilities.check(family, "family", 1):
            print("This is not the name of a family of logic fragments")
        else:
            acc2 = True
    acc3 = False
    while not acc3:
        trait_type = input("Is this trait a restriction or a feature? \n")
        if not trait_type in ["restriction", "feature"]:
            print("Please type restriction or feature!")
        else:
            acc3=True
    
    trait_string = "trait("+ new_trait+", "+ \
                    trait_type+", "+ \
                    family+")."
    now=datetime.datetime.now()
    now_string = now.strftime("%Y-%m-%d %H:%M:%S")
    addage = "%New trait (created: "+ now_string +")\n"+\
                trait_string+"\n"
    file = open("added.lp", "a")
    file.write(addage)
    file.close()
    print("New trait has been successfully added.")
    return new_trait

def create_new_result():
    new_result = input("What result would you like to add? \n")
    result = []
    ctl = clingo.Control()
    program = utilities.lpToString("include.lp")
    program = program + new_result
    try:
        ctl.add("base", [], program)
        ctl.ground([("base", [])])
        with ctl.solve(yield_=True) as models:
            for model in models:
                result.append(model.symbols(shown=True))
        if len(result) != 1:
            print("This result is incompatible with the knowledge base. Abort")
        else:
            now=datetime.datetime.now()
            now_string = now.strftime("%Y-%m-%d %H:%M:%S")
            addage = "%New result (created: "+ now_string +")\n"+\
                        new_result+"\n"
            file = open("added.lp", "a")
            file.write(addage)
            file.close()
            print("New Result has been added.")
    except:
        print("New Result is syntactically incorrect!")  


options = {
    1: ("Add a new type of DL", create_new_dl),
    2: ("Add a new type of First Order Logic fragment", create_new_fol),
    3: ("Add a new type of Modal Logics fragment", create_new_modal_logics),
    4: ("Add a new type of semantic", create_new_semantics),
    5: ("Add a new complexity class", create_new_complexity_class),
    6: ("Add a new trait of a logic", create_new_trait),
    7: ("Add a new result", create_new_result),
    8: ("Check a result", check_result),
    9: ("Check a result - using the knowledge base corpus", check_result),
    10: ("Modify program for justification calculation", modify_for_justifications),
    11: ("Modify program for justification calculation - using the knowledge base corpus", modify_for_justifications)
}

if __name__ == "__main__":
    main()