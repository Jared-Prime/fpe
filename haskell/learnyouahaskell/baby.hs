-- function declaration
doubleMe x = x + x

-- ... with two parameters
doubleUs x y = x*2 + y*2

-- ... calling other function
doubleUs' x y = doubleMe x + doubleMe y

-- introducing `if` statement
-- `then` and `else` required to be a statement
doubleSmallNumber x = if x > 100
                        then x
                        else x*2

-- single quote as valid character
-- inlining an if statement
doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

-- ... first character must be lowercase ( classes / modules are uppercase? )
conanO'Brien = "It's a-me, Conan O'Brien!"

-- a list
lostNumbers = [1,2,3,4,5]

-- a range
texasRange = [1..20]

-- specifying steps in a range
evens = [2,4..100]
odds  = [1,3..100]

-- trouble with floats
naughtyByNature = [0.1,0.3..1]

-- infinite lists
-- remember, this is lazy evaluation!
foreverForeverEver = [10,100..] -- note that `next first second ... = second - first`

-- a cycle
octave = cycle "abcdefg"

-- set comprehension
demonstrateSetComprehension = "S = { 2x | x : N, x <= 10 }"
describeSetComprehension = "A set S whose members are twice a number x, where x is a Natural number and less than or equal to 10"

-- list comprehension
demonstrateListComprehension = [x*2 | x <- [1..10]]
describeListComprehension = "just like set comprehension:  [x*2 | x <- [1..10]]"

-- filtering
boomBang xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- ... with strings
nouns = ["hobo", "frog", "pope"]
adjectives = ["lazy", "grouchy", "scheming"]
epicHilarity = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

-- ... demonstrating an replacement
toOne xs   = [1 | _ <- xs]
length' xs = sum( toOne xs )

removeLowerCase st = [c | c <- st, c `elem` ['A'..'Z']]

-- tuples
yourFirstTuple = (1,2,"cat")
illRaiseYouATuple = ((1,2),("cat"))
