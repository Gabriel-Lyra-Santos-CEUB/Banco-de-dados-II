CREATE TABLE `cargo` (
  `cd_cargo` int NOT NULL,
  `cargo` char(20) DEFAULT NULL,
  PRIMARY KEY (`cd_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

  CREATE TABLE `funcionario` (
  `matricula` int NOT NULL,
  `funcionario` char(50) DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `cd_setor` int DEFAULT NULL,
  `cd_cargo` int DEFAULT NULL,
  `salario` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`matricula`),
  KEY `cd_setor` (`cd_setor`),
  KEY `cd_cargo` (`cd_cargo`),
  CONSTRAINT `cd_cargo` FOREIGN KEY (`cd_cargo`) REFERENCES `cargo` (`cd_cargo`),
  CONSTRAINT `cd_setor` FOREIGN KEY (`cd_setor`) REFERENCES `setor` (`cd_setor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

  CREATE TABLE `setor` (
  `cd_setor` int NOT NULL,
  `setor` char(30) DEFAULT NULL,
  PRIMARY KEY (`cd_setor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- insert into setor (cd_setor, setor)values(1, 'Enfermaria'),(2, 'Administracao'),(3, 'Informatica'),(4, 'Engenharia'),(5, 'Juridico'),(6, 'Logistica'),(7, 'Presidencia');
-- insert into cargo (cd_cargo, cargo)values(1, 'Enfermeiro(a)'),(2, 'Administrador(a)'),(3, 'Analista'),(4, 'Engenheiro(a)'),(5, 'Advogado(a)'),(6, 'Gerente'),(7, 'Executivo(a)');
-- insert into funcionario (matricula, funcionario, dt_nascimento, cd_setor, cd_cargo, salario)values(1, 'Ana Clara', '1977-07-05', 5,1,3000),(2, 'Patricia Azevedo', '1944-07-04', 1,1,4000),(3, 'Jose Maria', '1971-05-10', 3,1,6000),(4, 'Sonia Abrantes', '1979-05-29', 4,1,7000),(5, 'Valdir Reinaldo', '1960-09-22', 2,2,16000),(6, 'Jose Alberto', '1955-01-13', 2,2,15000);

-- questao 1
SELECT * 
FROM work.funcionario
WHERE cd_setor = 2;

-- questao 2
SELECT * 
FROM work.funcionario
WHERE cd_setor = 1;

-- questao 3
DELETE
FROM work.cargo
WHERE cd_cargo = 1;

-- questao 4
DELETE
FROM work.setor
WHERE cd_setor = 1;

-- questao 5
UPDATE work.funcionario
SET salario = 6000
WHERE matricula = 1;

-- questao 6
UPDATE work.funcionario
SET salario = salario + salario/10;

-- questao 7
SELECT *
FROM work.funcionario
WHERE salario >= 5000;

-- questao 8
SELECT *
FROM work.funcionario
WHERE cd_cargo = 1;
