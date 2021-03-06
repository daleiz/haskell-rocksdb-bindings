module Database.RocksDB.Types where

import Control.Exception (Exception)
import Data.ByteString
import qualified Database.RocksDB.C as C
import Database.RocksDB.Options

newtype DB = DB C.DBFPtr

newtype ColumnFamily = ColumnFamily C.CFFPtr

data ColumnFamilyDescriptor = ColumnFamilyDescriptor
  { name :: String,
    options :: DBOptions
  }

data KeyRange = KeyRange
  { startKey :: ByteString,
    limitKey :: ByteString
  }
