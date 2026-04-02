use alcool;

SELECT Countries
FROM tabela_principal;

-- escolhendo a população para usar estatistica --
-- resolvi escolher um pais aleatorio sem motivo aparente -- 
SELECT Gender, Countries
FROM tabela_principal
WHERE Gender = "Male" and Countries = "Brazil"
ORDER BY Countries;
