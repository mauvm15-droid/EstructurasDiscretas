module Auxiliar where

data Natural = Cero | S Natural deriving (Eq, Show)

-- Suma dos naturales.
-- Ejemplo:
-- sumaNat (S Cero) (S Cero) == S (S Cero)

sumaNat :: Natural -> Natural -> Natural
sumaNat Cero n = n
sumaNat (S n) m = S (sumaNat n m)

-- Multiplica dos naturales mediante sumas repetidas.
-- Ejemplo:
-- multiNat (S (S Cero)) (S (S Cero))
-- == S (S (S (S Cero)))

multiNat :: Natural -> Natural -> Natural
multiNat Cero _ = Cero
multiNat (S n) m = sumaNat m (multiNat n m)
