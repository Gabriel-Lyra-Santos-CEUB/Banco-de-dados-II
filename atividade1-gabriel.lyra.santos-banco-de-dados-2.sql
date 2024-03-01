CREATE TABLE cargo (
  id_cargo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_cargo INTEGER UNSIGNED NULL,
  salario FLOAT NULL,
  PRIMARY KEY(id_cargo)
);

CREATE TABLE carro (
  id_carro INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  marca_idmarca INTEGER UNSIGNED NOT NULL,
  funcionario_id_funcionario INTEGER UNSIGNED NOT NULL,
  ano INTEGER UNSIGNED NULL,
  PRIMARY KEY(id_carro, marca_idmarca),
  INDEX carro_FKIndex1(funcionario_id_funcionario),
  INDEX carro_FKIndex2(marca_idmarca)
);

CREATE TABLE estacionamento (
  id_vaga INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  carro_id_carro INTEGER UNSIGNED NOT NULL,
  hora_entrada DATETIME NOT NULL,
  hora_saida DATETIME NULL,
  PRIMARY KEY(id_vaga),
  INDEX estacionamento_FKIndex1(carro_id_carro)
);

CREATE TABLE funcionario (
  id_funcionario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  setor_id_setor INTEGER UNSIGNED NOT NULL,
  cargo_id_cargo INTEGER UNSIGNED NOT NULL,
  nome VARCHAR(255) NULL,
  PRIMARY KEY(id_funcionario),
  INDEX funcionario_FKIndex1(cargo_id_cargo),
  INDEX funcionario_FKIndex2(setor_id_setor)
);

CREATE TABLE marca (
  idmarca INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_marca VARCHAR(255) NULL,
  PRIMARY KEY(idmarca)
);

CREATE TABLE modelo (
  id_modelo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  marca_idmarca INTEGER UNSIGNED NOT NULL,
  nome_modelo INTEGER UNSIGNED NULL,
  PRIMARY KEY(id_modelo, marca_idmarca),
  INDEX modelo_FKIndex1(marca_idmarca)
);

CREATE TABLE setor (
  id_setor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NULL,
  local_2 VARCHAR(255) NULL,
  PRIMARY KEY(id_setor)
);


