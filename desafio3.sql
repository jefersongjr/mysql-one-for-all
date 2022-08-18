SELECT
   user_name AS usuario,
   count(track_name) AS qt_de_musicas_ouvidas,
   ROUND((SUM(DURATION) / 60), 2) AS total_minutos
  FROM
    SpotifyClone.history AS history
  INNER JOIN
    SpotifyClone.users AS users ON history.user_id = users.user_id
  INNER JOIN
    SpotifyClone.tracks AS tracks ON history.track_id = tracks.track_id
    GROUP BY usuario
    ORDER BY usuario;