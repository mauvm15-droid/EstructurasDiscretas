module Entero where
import Auxiliar

-- Multiplica dos enteros considerando sus signos.
-- Ejemplo:
-- multiEnt (Neg (Succ (Succ Zero))) (Succ (Succ Zero)) == Neg (Succ (Succ (Succ (Succ Zero))))

multiEnt :: Ent -> Ent -> Ent
multiEnt Zero _ = Zero
multiEnt _ Zero = Zero

multiEnt (Succ n) m = sumaEnt m (multiEnt n m)

multiEnt (Neg n) Zero = Zero
multiEnt (Neg n) (Succ m) = Neg (multiEnt n (Succ m))
multiEnt (Neg n) (Neg m) = multiEnt n m