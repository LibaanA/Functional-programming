--program starts here
import Data.Char

--defining

nlowers = length ['a'..'z']

nUppers = length ['A'..'Z']

-- converts a lower-case letter between 'a' and 'z' into the corresponding
-- integer between 0 and 25
let2int :: Char -> Int
let2int c = ord c - ord 'a'


-- converts a upper-case letter between 'A' and 'Z' into the corresponding
-- integer between 0 and 25
let2int' :: Char -> Int
let2int' c = ord c - ord 'A' 



-- perform the opposite conversion of the above
int2let :: Int -> Char
int2let n = chr (ord 'a' + n)


int2let' :: Int -> Char
int2let' n = chr (ord 'A' + n) 

-- perform shifting
shift :: Int -> Char -> Char
shift n c | isLower c = int2let ((let2int c + n) `mod` nlowers)
          | isUpper c = int2let' ((let2int' c + n) `mod` nUppers) 
          | otherwise      = c

-- perform encoding
encode :: Int -> String -> String
encode n cs = [shift n c | c <- cs]
--program ends here

-- The following program is a cipher program 