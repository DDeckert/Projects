import os
import clingo

class Context:
    def id(self, x):
        return x
    def seq(self, x, y):
        return [x, y]

def on_model(m):
    print(m)

def lpToString(filePath):
    result = ""
    if (os.path.isfile(filePath)):
        file = open(filePath, "r")
        lines = file.readlines()
        for line in lines:
            if "#include" in line:
                newPath = line.split("\"")[1]       #This crops the line to only the filepath of the included file
                result = result + lpToString(newPath)
            else:
                if (not "#" in line) and (not len(line.replace("\n", "")) == 0):
                    if not line[0] == '%':
                        result = result + line
    else:
        print("The specified file does not exist!")
    return result


def checkEntailment(program, result):
    ctl = clingo.Control()
    ctl.add("base", [], program)
    ctl.ground([("base", [])])
    modelSet = []
    modelHandle = ctl.solve(yield_ = True)
    for mod in modelHandle:
        modelSet.append(mod)
    if len(modelSet) == 0:
        return (False, 0)
    entailed = True
    for model in modelSet:
        entailed = entailed and model.contains(result)
    return (entailed, len(modelSet))


#Example for Symbol that might be checked for:
#   search_obj = clingo.Function(name="obj", arguments=[clingo.Function(name)])

def check(search_name, predicate, arity):
    result = []
    ctl = clingo.Control()
    program = lpToString("include.lp")
    program = program + "\n#show "+predicate+"/"+str(arity)+"."
    ctl.add("base", [], program)
    ctl.ground([("base", [])], context=Context())
    with ctl.solve(yield_=True) as models:
        for model in models:
            result.append(model.symbols(shown=True))
    if len(result) > 1:
        print("There is more than one model. Aborting!\n")
        raise ValueError
    if len(result) < 1:
        print("There is no model. Aborting!\n")
        raise ValueError
    for atom in result[0]:
        for argument in atom.arguments:
            if argument.name == search_name:
                return True
    return False


# Function transforms string of a single ASP result into a clingo Symbol object
# This function assumes that the ASP result consists only of function and constant symbols

def strToSymbol(string):
    name = string.split('(')[0]
    if not "(" in string:   # for constant symbols
        symbol = clingo.Function(name = name)
        return symbol
    else:
        argumentStr = string.split('(')[1] #This still contains the closing bracket and possibly a '.'
        argumentStr = argumentStr.split(')')[-2]

        arguments = []
        argument = ""
        brackets = 0
        for char in argumentStr:
            if char == '(':
                brackets += 1
            if char == ')':
                brackets -= 1
            if char == ',' and brackets == 0:
                arguments.append(argument)
                argument = ""
            else :
                if not char == ' ':
                    argument += char
        arguments.append(argument)
        
        argSymbols = []
        for arg in arguments:
            argSymbols.append(strToSymbol(arg))
        symbol = clingo.Function(name = name, arguments = argSymbols)
        return symbol

