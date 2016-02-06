{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Network.HTTP.Types        (status200)
import           Network.HTTP.Types.Header (hContentType)
import           Network.Wai               (Application, responseLBS)
import           Network.Wai.Handler.Warp  (run)

main = run 3030 app

app :: Application
app req f =
    f $ responseLBS status200 [(hContentType, "text/plain")] "ok"
