 SELECT
    COUNT(*) AS quantidade_musicas_no_historico   
 FROM SpotifyClone.history AS history
    INNER JOIN SpotifyClone.users AS users ON history.user_id = users.user_iD
 WHERE user_name = 'Barbara Liskov';