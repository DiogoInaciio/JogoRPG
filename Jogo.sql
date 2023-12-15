CREATE TABLE personagem(
personagem_codigo INT(50) AUTO_INCREMENT PRIMARY KEY, 
personagem_nome VARCHAR(45),
personagem_foto LONGBLOB,
pais_origem INT(40),
personagem_nivel INT(240),
personagem_nivel_de_skils INT(100)
);

CREATE TABLE pais_origem(
pais_origem INT(50) PRIMARY KEY,
pais_origem_nome VARCHAR(50)
);

CREATE TABLE NPC(
npc_codigo INT(50) PRIMARY KEY,
npc_nome VARCHAR(50),
npc_liberacao INT(240),
personagem_codigo INT(50),
personagem_nivel INT(240),
partida_codigo INT(50), 
partida_nivel INT(240),
condicao INT(50),
enigma INT(100),
regiao_codigo INT(100) 
);

CREATE TABLE partida(
partida_codigo INT(240) PRIMARY KEY,
partida_nome VARCHAR(240),
partida_nivel INT(240),
pontos INT(240),
dificuldade INT(10) NOT NULL,
condicao_partida INT(50),
duracao_partida DECIMAL(10,2)
);

CREATE TABLE usuario_partida(
usuario_email VARCHAR(250) PRIMARY KEY,
usuario_nome VARCHAR(250),
partida_codigo INT(50) NOT NULL,
usuario_partida_dicas VARCHAR(250),
usuario_partida_pontos INT(250),
partida_pendente BOOLEAN,
regiao_codigo INT(50)
);

CREATE TABLE usuario(
usuario_email VARCHAR(250) PRIMARY KEY,
usuario_nick VARCHAR(50),
usuario_pontos INT(100),
usuarios_derrotas INT(100) NOT NULL,
usuarios_vitorias INT(100) NOT NULL,
usuarios_senha VARCHAR(250),
usuarios_login VARCHAR(250),
usuario_trofeu INT(250)
);

CREATE TABLE conquistas(
conquistas INT(100) PRIMARY KEY NOT NULL,
conquistas_descricao VARCHAR(250),
conquistas_necessarias INT(150)
);

CREATE TABLE regiao(
regiao_codigo INT(100) PRIMARY KEY,
regiao_nome VARCHAR(50),
territorio_nome VARCHAR(50),
territorio_codigo INT(100) 
);

CREATE TABLE dificuldade(
dificuldade_codigo INT(100) PRIMARY KEY NOT NULL,
dificuldade_descricao VARCHAR(50),
dificuldade_nivel INT(50),
dificuldade_personagem INT(100)
);

CREATE TABLE enigma(
enigma_codigo INT(100) PRIMARY KEY,
enigma_pergunta VARCHAR(250),
enigma_resposta VARCHAR(250),
enigma_dica VARCHAR(250),
enigma_recompensa INT(100),
dificuldade_codigo INT(100) NOT NULL,
assunto_codigo INT(100)
);

CREATE TABLE assunto(
assunto_codigo INT(100) PRIMARY KEY,
assunto VARCHAR(50)
);
