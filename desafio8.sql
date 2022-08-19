SELECT
   artist_name,
   album_name   
FROM SpotifyClone.album AS album
   INNER JOIN SpotifyClone.artist AS artist ON album.artist_id = artist.artist_id
    WHERE artist_name = 'Elis Regina'
    ORDER BY album_name
 ;