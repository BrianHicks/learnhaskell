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
Functions that only have return values defined for a subset of valid inputs are called "partial functions"
We call functions that return valid results over their entire input domains "total functions"
## More simple list manipulations
the concat function takes a list of lists of the same type and concatenates them into a single list
to remove one level of nesting in lists, use the concat function
the `reverse` function returns the elements of a list in reverse order
for lists of `Bool`, the `and` and `or` functions generalise && and || over lists
`and` is the Haskell equivalent of Python's `all`
`or` is the Haskell equivalent of Python's `any`
`all` and `any` take a function and a list, and return `and` and `or` of that function applied to each element in the list
`splitAt` returns a pair of the input list, split at the given index
`takeWhile` takes elements from of a list as long as the predicate remains true
`dropWhile` drops elements from a list as long as the predicate remains true
`span` is like `break` but consumes while it's predicate succeeds
`elem` indicates whether a value is present in a list
`notElem` indicates whether a value is not present in a list
`filter` takes a predicate, and returns every element of the list on which the predicate succeeds
`isPrefixOf` lives in `Data.List`
`isInfixOf` lives in `Data.List`
`isSuffixOf` lives in `Data.List`
the `zip` function takes two lists and "zips" them into a single list of pairs
the output of `zip` is as long as the shorter of it's two inputs
`zipWith` takes two lists and applies a function to each pair of elements
`zip` and `zipWith` have variants that take more than two lists: `zip3` through `zip7`
`unlines` joins a list of strings with newlines (and appends a newline)
`words` splits an input string on any white space
`unwords` joins a list of strings with a single space

