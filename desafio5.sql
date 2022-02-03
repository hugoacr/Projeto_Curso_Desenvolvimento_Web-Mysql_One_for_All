SELECT
    S.song_name AS cancao,
    COUNT(DISTINCT US.user_id) AS reproducoes
FROM Song AS S
	INNER JOIN User_Song AS US
ON S.song_id = US.reproduction_history
GROUP BY cancao
ORDER BY reproducoes DESC LIMIT 2;