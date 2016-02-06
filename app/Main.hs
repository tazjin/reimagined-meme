{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import           Data.Proxy
import           Data.Text                (Text, empty)
import           Network.Wai.Handler.Warp (run)
import           Servant
import           Servant.Server

type Echo = Get '[PlainText] Text

handler :: Server Echo
handler = return empty

main :: IO ()
main = run 8080 $ serve (Proxy :: Proxy Echo) handler
