use alcool;

SELECT Countries
FROM tabela_principal;

-- escolhendo a população para usar estatistica --
-- sendo homem --
SELECT DISTINCT(Countries), Count(Gender)
FROM tabela_principal
WHERE Gender = "Male"
GROUP BY Countries
ORDER BY Count(Gender) DESC;

--sendo mulher --
SELECT DISTINCT(Countries), COUNT(Gender)
FROM tabela_principal
WHERE Gender = "Female"
GROUP BY Countries
ORDER BY Count(Gender) DESC;
