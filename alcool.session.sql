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


-- descobri que as mulheres na chinna foram as que mais consumiram alcool no mundo inteiro --
-- agora preciso saber em que periodo isso ocorre então a minha população vai ser as mulhres chinesas --
SELECT DISTINCT(Date), COUNT(Gender)
FROM tabela_principal
WHERE Gender = "Female" and Countries = "China"
GROUP BY Date
ORDER BY  COUNT(Gender) DESC;
