{-# LANGUAGE LinearTypes       #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Example1 where

import Prelude (Int)

linearSwap :: (Int, Int) %1-> (Int, Int)
-- linearSwap (x, y) = (x, x) -- Oh no!
linearSwap (x, y) = (y, x)
