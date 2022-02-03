SELECT
    COUNT(US.reproduction_history) AS quantidade_musicas_no_historico
FROM User AS U
	INNER JOIN User_Song AS US
ON U.user_id = US.user_id
WHERE U.user_name = "Bill";
