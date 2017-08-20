-- |
-- Module      : Main
-- Description : AWS Lambda handler implementation
-- Copyright   : (c) Matt Spaulding, 2017
-- License     : BSD3
-- Maintainer  : matt@mattops.io
module Main where

import Lambda
import Java
import Java.Collections

-- | handler implements the handler function for the RequestHandler object
handler :: (Map JString JString) -> Context -> Java (RequestHandler (Map JString JString) JString) (Map JString JString)
handler m _ = return m

-- | Export the handler so it can be referenced by AWS Lambda
-- Use the reference: com.example.LambdaTest::handler
foreign export java "handler"
    handler :: (Map JString JString) -> Context -> Java (RequestHandler (Map JString JString) JString) (Map JString JString)

main :: IO ()
main = return ()
