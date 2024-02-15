--1
SELECT Nome,
	Ano
	FROM FILMES

--2
SELECT Nome,
	Ano
FROM FILMES
ORDER BY Ano

--3
SELECT * FROM FILMES WHERE Nome = 'De Volta para o Futuro' 

--4
SELECT * FROM FILMES WHERE Ano = '1997'

--5
SELECT * FROM FILMES WHERE Ano >= '2000'

--6
SELECT * FROM FILMES 
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao

--7
SELECT Ano,
	   COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
Order BY Quantidade DESC

--8
SELECT * FROM Atores
WHERE Genero = 'M'

--9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT  F.Nome,
G.Genero
FROM FilmesGenero
INNER JOIN Generos G ON G.Id = FilmesGenero.IdGenero
INNER JOIN Filmes F ON F.Id = FilmesGenero.IdFilme

--11
SELECT  F.Nome,
G.Genero
FROM FilmesGenero
INNER JOIN Generos G ON G.Id = FilmesGenero.IdGenero
INNER JOIN Filmes F ON F.Id = FilmesGenero.IdFilme
WHERE G.Genero = 'Mistério'

--12
SELECT F.Nome,
	   A.PrimeiroNome,
	   A.UltimoNome,
	   Papel
FROM ElencoFilme
INNER JOIN Filmes F ON F.Id = ElencoFilme.IdFilme
INNER JOIN Atores A ON A.Id = ElencoFilme.IdAtor