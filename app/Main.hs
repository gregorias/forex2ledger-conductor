module Main (main) where

import Relude
import Turtle

forex2Ledger :: Shell Line
forex2Ledger =
  inproc
    "/Users/grzesiek/.local/bin/forex2ledger"
    [ "--config_file"
    , "/Users/grzesiek/Code/forex2ledger/config.toml"
    ]
    empty

pricesTarget :: Turtle.FilePath
pricesTarget = "/Users/grzesiek/Wallet/updates/prices.ledger"

main :: IO ()
main = do
  append pricesTarget ("" <|> forex2Ledger)
