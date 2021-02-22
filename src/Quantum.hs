{-# LANGUAGE LinearTypes       #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

module Quantum where

import Prelude (Int, undefined) 
import Data.Unrestricted.Linear (Ur(..))

-- Classical bit
data Bit = Int

-- One quantum variable
data Qubit


-- | Apply the "hadamard" operation to the qubit.
h :: Qubit %1-> Qubit
h = undefined


-- | Made-up non-physical operation to simply use up two qubits.
combine :: Qubit %1-> Qubit %1-> Qubit
combine = undefined


-- | Measure a qubit and yield a bit ( 1 or 0 ).
-- Note that the resulting bit is unrestricted; i.e.
-- we can use it as many times as we like.
measure :: Qubit %1-> Ur Bit
measure = undefined


-- | Apply the `X` gate to `target` if the control
-- qubit is equal to `1`.
cx ::   Qubit 
   %1-> Qubit 
   %1-> (Qubit, Qubit)
cx = undefined


algorithm ::   (Qubit, Qubit)
          %1-> (Qubit, Qubit)
-- algorithm (s0, s1) = cx (h s0) s0 -- Whoops! Typo.
algorithm (s0, s1) = cx (h s0) s1


algorithm2 ::   (Qubit, Qubit, Qubit) 
           %1-> ((Qubit, Qubit), Ur Bit)
-- algorithm2 (s0, s1, s2) = (cx (h s0) s1, Ur 0) -- Whoops! Forgot to measure.
algorithm2 (s0, s1, s2) = (cx (h s0) s1, measure s2)
