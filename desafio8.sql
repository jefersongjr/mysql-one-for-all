SELECT
   artist_name AS artista,
   album_name  AS album 
FROM SpotifyClone.album AS album
   INNER JOIN SpotifyClone.artist AS artist ON album.artist_id = artist.artist_id
    WHERE artist_name = 'Elis Regina'
    ORDER BY album_name;