module Natural where
import Auxiliar

-- Convierte un entero no negativo a Natural
-- Ejemplos:
-- a_natural 0 == Cero
-- a_natural 2 == S (S Cero)

a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n
    | n > 0 = S (a_natural (n - 1))


-- Convierte un Natural a un entero
-- Ejemplos:
-- a_entero Cero == 0
-- a_entero (S (S Cero)) == 2

a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n

-- Eleva un natural a la potencia de otro
-- Ejemplo:
-- potenciaNat (S (S (S Cero))) (S (S Cero)) == S (S (S (S (S (S (S (S (S Cero))))))))

potenciaNat :: Natural -> Natural -> Natural
potenciaNat _ Cero = S Cero
potenciaNat n (S m) = multiNat n (potenciaNat n m)

-- Calcula el factorial de un natural.
-- Ejemplo:
-- facNat (S (S (S Cero))) == S (S (S (S (S (S Cero)))))

facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multiNat (S n) (facNat n)
