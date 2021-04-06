{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Relude
import Turtle

forex2Ledger :: Shell Line
forex2Ledger =
  inproc
    "/home/grzesiek/.local/bin/forex2ledger"
    [ "--config_file"
    , "/home/grzesiek/Code/forex2ledger/config.toml"
    ]
    empty

pricesTarget :: Turtle.FilePath
pricesTarget = "/home/grzesiek/Documents/Finance/Wallet/updates/prices.dat"

main :: IO ()
main = do
  append pricesTarget ("" <|> forex2Ledger)
