SELECT 
	track_name AS  nome_musica,
    REPLACE(
		REPLACE(
			REPLACE(
				REPLACE(
					REPLACE(track_name, 'Bard', 'QA'),
				'Amar', 'Code Review'),
					'Pais','Pull Requests'),
						'SOUL', 'CODE'),
							'SUPERSTAR', 'SUPERDEV') AS novo_nome
FROM SpotifyClone.tracks
WHERE track_id = 9 
	OR track_id = 7 
	OR track_id = 6
    OR track_id = 1
    OR track_id = 3
ORDER BY nome_musica DESC;

