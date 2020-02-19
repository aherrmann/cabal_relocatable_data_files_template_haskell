{-# LANGUAGE TemplateHaskell #-}

module UsesDataFile where

import Language.Haskell.TH
import ProvidesDataFile

content :: String
content = $(do
  content <- runIO $ readFile =<< dataFile
  [|content|])
