--program starts here
quest1 = print $ perfects 1000

factors_summation a = sum [y | y <- [1..a], a `mod` y == 0, y /= a]

perfects a = [y | y <- [1..a], factors_summation y == y]
--program ends here 

--The following program returns the list of all perfect numbers up to
--a given limit. In this case that would be 1000.