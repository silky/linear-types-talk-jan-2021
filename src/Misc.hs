{-# LANGUAGE LinearTypes       #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Misc where

import Prelude (Int)
import Data.Num.Linear
import Data.Unrestricted.Linear (Ur(..))

-- Note: Here we use "Unrestricted".
someLinear :: Ur a %1-> (a,a)
someLinear (Ur a) = (a, a)

-- ex2 :: a -> Ur a
-- ex2 a = Ur a

-- Used in the File API
--
-- type File
-- openFile  :: FilePath → IOL 1 File
-- readLine  :: File ⊸ IOL 1 (File,Unrestricted ByteString)
-- closeFile :: File ⊸ IOL ω ()
