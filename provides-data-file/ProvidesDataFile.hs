module ProvidesDataFile where

import Paths_provides_data_file
import System.FilePath

dataFile :: IO FilePath
dataFile = fmap (</> "my-data-file") getDataDir
