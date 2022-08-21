SELECT
    artist_name,count(user_id)
FROM SpotifyClone.followed_artists AS fa
INNER JOIN SpotifyClone.artist AS art ON fa.artist_id = art.artist_id
INNER JOIN SpotifyClone.album AS al ON al.artist_id = fa.artist_id
    GROUP BY artist_name;

