SELECT 
	Nome,
	Ano
FROM Filmes;

SELECT 
	Nome, 
	Ano, 
	Duracao
FROM Filmes 
ORDER BY Ano;

SELECT 
	Nome, 
	Ano, 
	Duracao

FROM filmes
WHERE nome = 'De Volta para o Futuro';

SELECT 
	Nome, 
	Ano, 
	Duracao

FROM filmes
WHERE ano = 1997;

SELECT 
	Nome, 
	Ano, 
	Duracao

FROM filmes
WHERE ano > 2000;

SELECT 
	Nome, 
	Ano, 
	Duracao

FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

SELECT Ano, COUNT(*) AS Quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY AVG(duracao) DESC;


SELECT *
FROM atores
WHERE genero = 'M';

SELECT *
FROM atores
WHERE genero = 'F'
ORDER BY PrimeiroNome ASC;


SELECT f.nome AS nome_filme, g.genero AS genero_filme
FROM filmes f
INNER JOIN filmesgenero fg ON f.id = fg.IdFilme
INNER JOIN generos g ON fg.IdGenero = g.id;


SELECT f.nome AS nome_filme, g.genero AS genero_filme
FROM filmes f
INNER JOIN filmesgenero fg ON f.id = fg.IdFilme
INNER JOIN generos g ON fg.IdGenero = g.id
WHERE g.genero = 'Mistério';

SELECT f.nome AS nome_filme, 
       a.PrimeiroNome, 
       a.UltimoNome, 
       ef.Papel
FROM filmes f
INNER JOIN ElencoFilme ef ON f.id = ef.IdFilme
INNER JOIN atores a ON ef.IdAtor = a.id;
