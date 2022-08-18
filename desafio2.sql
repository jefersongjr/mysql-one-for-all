SELECT 
  COUNT(*) AS cancoes,
  COUNT( distinct artist_id) AS artistas,
  COUNT( DISTINCT album_id) AS albuns
FROM SpotifyClone.tracks ;