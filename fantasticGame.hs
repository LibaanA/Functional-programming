{--
The following program is a fun text adventure game, 
users input directions and get an output of location
information.
--}
--program starts here
import System.IO              --importing input and output so the user can enter in letters to interact with game and also receive an output on the screen when they do so  

game :: IO ()                                                   --this is IO monad 
game = do putStrLn "Enter in what direction you want to go "    --do loop starts here,'putStrLn' prints message to screen. Also binding of name to definition happens here.
          movement <- getLine                                   --'getLine' takes input from user and stores it in 'movement' 
          putStrLn "Enter in what location you’re going in to:" --'putStrLn' prints following message to screen 
          play movement                                         -- play movement function definition

play :: String -> IO ()                                         -- play function type signature of type String, meaning that we input String and the output is also String
play movement =                                                    --binding of name to definition happens here  
   do makeaGuess <- getLine                                        --do loop starts here, 'getLine' takes input from user
      if makeaGuess == "quit" then                                 --if user inputs "quit" then this would essentially quit game
         putStrLn "Congratulations you’ve succeeded!!!/Game over!" --'putStrLn' would print the following message to screen
      else                                                         --if they dont
         do putStrLn (match movement makeaGuess)                   --this is another do loop inside the initial one
            play movement                                          --go to the following function 'play movement' which is a second input

match :: String -> String -> String                                --match function type signature which is of type String
match xs ys = locationInfo xs ys                                   --Binding of name to definition happens here. xs is the first input, ys is the second input

locationInfo :: String->String -> String                                          --locationInfo function type signature which is of type String 
locationInfo "w" "location1" =                                                    --binding of name to definition happens here 
    "You're inside location1. Straight ahead is the danger dungeon\n" ++          --description of location
    "of location2; behind you is location4. \n" ++                                --description of location
    "The assigned challenge for you if you agree, is\n" ++                        --description of location
    "retrieving golden sword and returning golden sword to\n" ++                  --description of location
    "the following location3."                                                    --description of location
locationInfo "w" "location2" = "Well done!!! You've retrieved golden sword\n" ++  --Binding of name to definition happens here. Also description is shown here. 
    "and succeeded in winning this game."                                         --continued description, since there is a new line from line before hence:'\n'
locationInfo "s" "location2" =                                                    --binding of name to definition happens here 
    "You're within the danger dungeon of location2. The pathway to\n" ++          --description of location
    "leave is behind you; there’s a gigantic green channel\n" ++                  --description of location 
    "to your right."                                                              --description of location
locationInfo "s" "location4"= "you're within location4"                           --Binding of name to definition happens here. Also description of location.             
locationInfo "w" "location4"= "you're within location4"                           --Binding of name to definition happens here. Also description of location. 
locationInfo _ "s location4"= "you're within s location4"                         --Binding of name to definition happens here. Also description of location. 
locationInfo _ _ = "Oh?! Nothing can be seen."                                    --Binding of name to definition happens here. Also description of location.  
--program ends here