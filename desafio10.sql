SELECT 
    track_name AS nome, 
    count(track_name) AS reproducoes
FROM SpotifyClone.history as history
    INNER JOIN SpotifyClone.users AS users ON history.user_id = users.user_id
    INNER JOIN SpotifyClone.tracks AS tracks ON history.track_id = tracks.track_id
    INNER JOIN SpotifyClone.plan AS plan ON plan.plan_id = users.plan_id
WHERE plan_name = 'gratuito' OR plan_name = 'pessoal'
GROUP BY track_name
ORDER BY track_name;