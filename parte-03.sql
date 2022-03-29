-- 1
SELECT * FROM enderecos;


-- 2
SELECT * 
FROM enderecos e
JOIN usuarios u
ON e.id = u.endereco_id
ORDER BY e.id;
	  

-- 3
SELECT rs.id, rs.nome, u.id, u.nome, u.email, u.senha, u.endereco_id
FROM usuarios u
JOIN usuario_redes_sociais urs ON u.id = urs.usuario_id
JOIN redes_sociais rs ON rs.id = urs.rede_social_id;
	  

-- 4
SELECT rs.id, rs.nome, u.id, u.nome, u.email, u.senha, u.endereco_id, e.id, e.rua, e.pais, e.cidade
FROM usuarios u
JOIN usuario_redes_sociais urs ON u.id = urs.usuario_id
JOIN enderecos e ON e.id = u.endereco_id
JOIN redes_sociais rs ON rs.id = urs.rede_social_id;


-- 5
SELECT rs.nome, u.nome, u.email, e.cidade
FROM usuarios u
JOIN usuario_redes_sociais urs ON u.id = urs.usuario_id
JOIN redes_sociais rs ON rs.id = urs.rede_social_id
JOIN enderecos e ON e.id = u.endereco_id;