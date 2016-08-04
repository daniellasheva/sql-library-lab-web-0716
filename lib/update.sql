-- UPDATE characters SET species = "Martian"
-- WHERE species = SELECT* FROM characters ORDER BY species DESC LIMIT 1;

UPDATE characters SET species="Martian"
WHERE id=(SELECT MAX(id) FROM characters);