DELETE a
FROM person a join person b
WHERE a.id > b.id AND a.email = b.email
