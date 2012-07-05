We define a new data type using the data keyword
the object defined by the data keyword is called a type contructor
the object following the name in a data statement is caleld a value constructor
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
-- ended at h2 "The enumeration"
