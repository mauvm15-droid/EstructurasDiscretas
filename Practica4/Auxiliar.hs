module Auxiliar where

data Natural = Cero | S Natural deriving (Eq, Show)

-- Suma dos naturales
-- Ejemplo:
-- sumaNat (S Cero) (S Cero) == S (S Cero)

sumaNat :: Natural -> Natural -> Natural
sumaNat Cero n = n
sumaNat (S n) m = S (sumaNat n m)

-- Multiplica dos naturales 
-- Ejemplo:
-- multiNat (S (S Cero)) (S (S Cero)) == S (S (S (S Cero)))

multiNat :: Natural -> Natural -> Natural
multiNat Cero _ = Cero
multiNat (S n) m = sumaNat m (multiNat n m)




data Ent = Zero | Succ Ent | Neg Ent deriving (Eq, Show)

-- Suma dos enteros
-- Ejemplo:
-- sumaEnt (Succ (Succ Zero)) (Neg (Succ Zero)) == Succ Zero

sumaEnt :: Ent -> Ent -> Ent
sumaEnt Zero (Succ m) = (Succ m)
sumaEnt Zero (Neg m) = (Neg m)
sumaEnt (Succ n) Zero = (Succ n)
sumaEnt (Neg n) Zero = (Neg n)
sumaEnt (Succ n) (Succ m) = Succ(sumaEnt n (Succ m))
sumaEnt (Neg n) (Neg m) = Neg (sumaEnt n m)
sumaEnt (Succ n) (Neg m) = if (Succ n)==m then Zero else restaEnt (Succ n) m
sumaEnt (Neg n) (Succ m) = if n==(Succ m) then Zero else restaEnt (Succ m) n

-- Resta dos enteros considerando sus signos.
-- Ejemplo:
-- restaEnt (Succ (Succ Zero)) (Succ Zero) == Succ Zero

restaEnt :: Ent -> Ent -> Ent
restaEnt (Succ n) Zero = (Succ n)
restaEnt (Neg n) Zero = (Neg n)
restaEnt Zero (Neg m) = m
restaEnt Zero (Succ m) = Neg (Succ m)
restaEnt (Succ n) (Succ m) = if ((Succ n) == (Succ m)) then Zero else if (mayorEnt (Succ n) (Succ m)) then restaEnt n m else Neg (restaEnt m n)
restaEnt (Neg n) (Neg m) = sumaEnt (Neg n) m
restaEnt (Succ n) (Neg m) = sumaEnt (Succ n) m
restaEnt (Neg n) (Succ m) = Neg (Succ (sumaEnt n m))

-- Compara dos enteros y devuelve True si el primero es mayor.
-- Ejemplo:
-- mayorEnt (Succ (Succ Zero)) (Succ Zero) == True

mayorEnt :: Ent -> Ent -> Bool
mayorEnt (Succ n) Zero = True
mayorEnt Zero (Succ m) = False
mayorEnt (Neg n) Zero = False
mayorEnt Zero (Neg m) = True
mayorEnt (Neg n) (Succ m) = False
mayorEnt (Succ n) (Neg m) = True
mayorEnt (Succ n) (Succ m) = mayorEnt n m
mayorEnt (Neg n) (Neg m) = not (mayorEnt n m)
