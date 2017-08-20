-- |
-- Module      : Lambda
-- Description : Bindings to AWS Lambda Core library
-- Copyright   : (c) Matt Spaulding, 2017
-- License     : BSD3
-- Maintainer  : matt@mattops.io

{-# LANGUAGE MagicHash, TypeOperators, FlexibleContexts #-}
module Lambda where

import Java

-- | Context object that is passed to the request handler as the second argument
data {-# CLASS "com.amazonaws.services.lambda.runtime.Context" #-} Context =
    Context (Object# Context) deriving Class

-- | Our object that implements the RequestHandler interface
data {-# CLASS "com.example.LambdaTest implements com.amazonaws.services.lambda.runtime.RequestHandler" #-} RequestHandler a b =
    RequestHandler (Object# (RequestHandler a b)) deriving Class