## Chapter 4
## start at h2 "Warming up"
Haskell provides a built-in function, `lines`, that lets us split a text string on line boundaries
`lines` returns a list of strings with termination characters omitted
prelude defines `break` that we can use to partition a list into two parts
`break` takes a function as its first parameter
the function provided to break must examine an element of the list and return a `Bool` to indicate whether to break the list at that point
`break` returns a pair; the sublist consumed before the predicate and the rest of the list
the element `break` broke on is returned in the suffix of the list
What does the `length` function do? // shows how many elements are in a list
the `null` function returns True if a list is empty
`init` returns all but the last of it's input
## heading "Safely and sanely working with crashy functions"
Functions that only have return valeus defined for a subset of valid inputs are called "partial functions"
We call functions that return valid results over their entire input domains "total functions"

