{-# LANGUAGE LinearTypes       #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Example2 where

import Prelude (Int)
import Data.Num.Linear

f :: Num a => a %1-> a
-- f x = x + x -- Oops!
f x = (fromInteger 3) + x
