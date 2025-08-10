-- Text literals
{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty

main :: IO()
main = scotty 3000 $ do
    -- HTTP GET Route
    get "/" $ do
        text "My first haskell program!"
    get "/:word" $ do
        beam <- pathParam "word"
        html $ mconcat ["<h1>Your word is: ", beam,"</h1>"]