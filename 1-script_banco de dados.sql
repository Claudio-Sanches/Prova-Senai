create database manutencao;

use manutencao;

CREATE TABLE `manutencao`.`ordemservico` (
  `codigo` INT NOT NULL,
  `data` DATE NULL,
  `descricao` VARCHAR(255) NULL,
  `cliente` VARCHAR(255) NULL,
  `veiculo` VARCHAR(45) NULL,
  PRIMARY KEY (`codigo`));
  
CREATE TABLE `manutencao`.`itemos` (
  `id` INT NOT NULL,
  `codItem` VARCHAR(45) NULL,
  `nomeCurto` VARCHAR(45) NULL,
  `descricao` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `codigoOS`
    FOREIGN KEY (`id`)
    REFERENCES `manutencao`.`ordemservico` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
  
  
  insert into ordemServico ('31/12/2022', 'Revisão periódica de 10.000km', 'José da Silva', 'Toyota SW4');
  
  insert into itemOS (1, "lav3", "Lavagem Grande", 1); 
  