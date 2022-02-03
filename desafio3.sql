SELECT
    U.user_name AS usuario,
    COUNT(US.reproduction_history) AS qtde_musicas_ouvidas,
    ROUND(SUM(S.seconds_duration)/60, 2) AS total_minutos
FROM User AS U
	INNER JOIN User_Song AS US
ON U.user_id = US.user_id
	INNER JOIN Song AS S
ON US. reproduction_history = S.song_id
GROUP BY usuario
ORDER BY usuario ASC;
