## Chapter 3
We define a new data type using the data keyword
the object defined by the data keyword is called a type contructor
the object following the name in a data statement is called a value constructor
a value constructor's name must start with a capital letter
after the value constructor, a data statement has components
a component serves the same purpose in Haskell as a class instance variable would in Python
type components are often referred to as fields
is it acceptable for a type constructor to have the same name as a value constructor? // yes, in fact it's normal
the type keyword introduces a type synonym
an algebraic data type can have more than one value constructor
the implementation of Bool can be expressed using an algebraic type by: // data Bool = False | True
when a type has more than one value constructor, they are usually referred to as alternatives or cases
in an algebraic type, we can use any of the alternatives to create a value of that type
The (==) operator requires its arguments to have the same type
## ended at h2 "The enumeration"
Pattern matching proceeds in the order specified in the source
In pattern matching, equations below a successful match have no effect
The sum function returns the sum of all numbers in a list
Pattern matching is sometimes referred to as deconstruction
If a literal value in a pattern, the corresponding part of the value we're matching against must contain an identical value
The wild card in pattern matching is `_`
A wild card acts similarly to a variable, but it doesn't bind a new variable
Can we use more than one wildcard in a single pattern? // yes
Record syntax is defined by braces after a value constructor, surrounding the fields
True or False: Record syntax defines accessor functions for each field // True
The fields in record syntax are one or more names, two colons, and a type
A parameterised type introduces type variables into a type declaration
Maybe is an example of a parameterised type
Maybe is defined as... // data Maybe a = Just a \n| Nothing\n deriving (Show)
Recursive types are defined in terms of themselves
A list is an example of a recursive type
If two types have the same shape, they are said to be isomorphic
## stopped at h2 "reporting errors"
error immediately aborts evaluation and prints the error message we give it
let starts a block of variable declarations
in ends a block of variable declarations
each line in a let block introduces a new variable
a name in a let block is bound to an expression, not a value
a where clause does the same thing as a let clause but is at the end of a function
## stopped at h2 "The offside role and white space in an expression"
This use of layout to convey structure is sometimes called the offside rule.
A files indentation is defined by the first top level declaration or definition
True or False: declarations or definitions after the first must have the same indentation? // True
Indentation in a let or where keyword is defined by the indentation of the next token after they keyword.
Explicit structure is used in place of indentation (though not often.)
To use explicit structure, surround a block of equations with curly braces.
The case construct lets us match patterns within an expression.
The case keyword is followed by an arbitrary expression (to be evaluated against)
In a case statement, the of keyword signifies the end of the expression and the beginning of the block of patterns.
Each case in a case statement consists of a pattern, an arrow (->) and an expression to evaluate on a match
## stopped at h2 "Common beginner mistakes with patterns"
A pattern can be followed by zero of more guards, each an expression of type `Bool`.
A guard is introduced by a `|` symbol.
When a guard expression is evaluated, all of the variables mentioned in the pattern with which it is associated are bound and can be used.
In a guard, `otherwise` is simply a variable bound to `True`, to aid readability.
