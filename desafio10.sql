SELECT
    S.song_name AS nome,
    COUNT(DISTINCT US.user_id) AS reproducoes
FROM Song AS S
	INNER JOIN User_Song AS US
ON S.song_id = US.reproduction_history
	INNER JOIN User AS U
ON US.user_id = U.user_id
	INNER JOIN Plan AS P
ON U.plan_id = P.plan_id
WHERE P.plan_name = "gratuito" OR P.plan_name = "pessoal"
GROUP BY nome
ORDER BY reproducoes DESC, nome;