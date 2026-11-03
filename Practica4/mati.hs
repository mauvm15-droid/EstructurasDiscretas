data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

-- Compara dos matrioskas y devuelve True si la primera 
-- es mayor o igual que la segunda
-- Ejemplo:
-- mayorIgual Mati Mati == True
-- mayorIgual (Cont (Cont Mati)) (Cont (Cont (Cont Mati))) == False

mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual Mati Mati = True
mayorIgual Mati (Cont _) = False
mayorIgual (Cont _) Mati = True
mayorIgual (Cont n) (Cont m) = mayorIgual n m

-- Convierte una matrioska en una lista desde la más externa
-- hasta la más interna
-- Ejemplo:
-- aplana Mati == [Mati]
-- aplana (Cont (Cont Mati)) == [Cont (Cont Mati), Cont Mati, Mati]

aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana m@(Cont n) = m : aplana n