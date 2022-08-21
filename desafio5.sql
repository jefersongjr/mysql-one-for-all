SELECT 
    track_name AS cancao,
    count(track_name) AS reproducoes
 FROM SpotifyClone.history AS history
     INNER JOIN SpotifyClone.tracks AS tracks ON history.track_id = tracks.track_id
  GROUP BY track_name
  ORDER BY reproducoes DESC, cancao
 LIMIT 2 ;
