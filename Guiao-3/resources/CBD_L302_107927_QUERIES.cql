USE cbd_lab3_ex2;

// 7. Permitir a pesquisa de todos os videos de determinado autor;
SELECT *
FROM video
WHERE author_username = 'joaosilva';

// 8. Permitir a pesquisa de comentarios por utilizador, ordenado inversamente pela data;
SELECT *
FROM comment_by_author
WHERE comment_author_username = 'anacosta';

// 9. Permitir a pesquisa de comentarios por videos, ordenado inversamente pela data;
SELECT *
FROM comment_by_video
ORDER BY time desc;

// 10. Permitir a pesquisa do rating medio de um video e quantas vezes foi votado;
SELECT author_username, video_id, AVG(rating) AS avg, count(*) AS count
FROM rating
GROUP BY author_username, video_id;

// 1. Os ultimos 3 comentarios introduzidos para um video;
SELECT *
FROM comment_by_video
WHERE author_username = 'joaosilva'
  AND video_id = '2a949560-77bb-4f85-b604-1d4c694f3bd6'
LIMIT 3;

// 2. Lista das tags de determinado video;UA.DETI.CBD- 2023/24 15
SELECT tag
FROM video
WHERE author_username = 'joaosilva'
  AND id = '2a949560-77bb-4f85-b604-1d4c694f3bd6';

// 3. Todos os videos com a tag Aveiro;
// Supõe-se que Aveiro seja a tag2, para cruzar com os dados inseridos.
SELECT *
FROM video_by_tag
WHERE tag = 'tag2';

// 4. Os ultimos 5 eventos de determinado video realizados por um utilizador;
SELECT *
FROM event
WHERE author_username = 'joaosilva'
  AND video_id = '2a949560-77bb-4f85-b604-1d4c694f3bd6'
  AND username = 'anacosta'
LIMIT 5;

// 5. Videos partilhados por determinado utilizador (maria1987, por exemplo) num determinado periodo de tempo (Agosto de 2017, por exemplo);
SELECT *
FROM video
WHERE author_username = 'joaosilva'
  AND upload_time >= '2023-10-01 00:00:00.000'
  AND upload_time < '2023-11-01 00:00:00.000'
    ALLOW FILTERING;

// 6. Os ultimos 10 videos, ordenado inversamente pela data da partilhada;
// Não é possível, pois o Cassandra não permite efetuar uma consulta alargada a todas as partições quando se usa um ORDER BY.

// 7. Todos os seguidores (followers) de determinado video;
SELECT *
FROM video_followers
WHERE author_username = 'joaosilva'
  AND video_id = '2a949560-77bb-4f85-b604-1d4c694f3bd6';

// 8. Todos os comentarios (dos videos) que determinado utilizador esta a seguir (following);
// Uma vez que não existem JOINs, não é possível efetuar esta query.

// 9. Os 5 videos com maior rating;
// Uma vez que não é possível fazer o avg() e ordenar por isso, não é possível efetuar a query.
// Uma alternativa possível seria criar uma tabela só com averages.

// 10. Uma query que retorne todos os videos e que mostre claramente a forma pela qual estao ordenados;
SELECT *
FROM video;

// 11. Lista com as Tags existentes e o numero de videos catalogados com cada uma delas;
SELECT tag, count(*)
FROM video_by_tag
GROUP BY tag;

// 12. Listar os comentários efetuados por um utilizador, após 2022-06-01.
SELECT *
FROM comment_by_author
WHERE comment_author_username = 'anacosta'
  AND time > '2022-06-01 00:00:00.000';

// 13. Contar o número de eventos por vídeo.
SELECT author_username, video_id, count(*)
FROM event
GROUP BY author_username, video_id;