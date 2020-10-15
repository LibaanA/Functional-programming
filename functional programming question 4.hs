--program starts here
merge :: Ord y =>[y] -> [y] -> [y]
merge [] listing         = listing
merge listing []         = listing
merge initial@(elemOne:listingOne) second@(elemTwo:listingTwo)
  | elemOne < elemTwo = elemOne : merge listingOne second
  | otherwise           = elemTwo : merge initial listingTwo
--program ends here

--the following program merges 
--two sorted lists to give a
--single sorted list