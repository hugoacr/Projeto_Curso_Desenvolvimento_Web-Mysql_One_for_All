SELECT
    U.user_name AS usuario,
    IF (sum(
			CASE
				WHEN year(US.play_date) >= '2021' > 0 THEN 1
				ELSE 0
			END
            ) > 0, 'Usuário ativo', 'Usuário inativo')
    AS condicao_usuario
FROM User AS U
	INNER JOIN User_Song AS US
ON U.user_id = US.user_id
GROUP BY usuario
ORDER BY usuario ASC;