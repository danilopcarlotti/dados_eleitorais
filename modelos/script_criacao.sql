-- MySQL Script generated by MySQL Workbench
-- Thu 11 Oct 2018 12:21:50 PM BRT
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dados_eleitorais
-- -----------------------------------------------------
-- The choice of collation was determined by how the court stores its data.
DROP SCHEMA IF EXISTS `dados_eleitorais` ;

-- -----------------------------------------------------
-- Schema dados_eleitorais
--
-- The choice of collation was determined by how the court stores its data.
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dados_eleitorais` DEFAULT CHARACTER SET latin1 ;
USE `dados_eleitorais` ;

-- -----------------------------------------------------
-- Table `dados_eleitorais`.`CONSULTA_CAND`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`CONSULTA_CAND` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`CONSULTA_CAND` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `DT_GERACAO` VARCHAR(45) NULL,
  `HH_GERACAO` VARCHAR(45) NULL,
  `ANO_ELEICAO` VARCHAR(45) NULL,
  `CD_TIPO_ELEICAO` VARCHAR(45) NULL,
  `NM_TIPO_ELEICAO` VARCHAR(45) NULL,
  `NR_TURNO` VARCHAR(45) NULL,
  `CD_ELEICAO` VARCHAR(45) NULL,
  `DS_ELEICAO` VARCHAR(45) NULL,
  `DT_ELEICAO` VARCHAR(45) NULL,
  `TP_ABRANGENCIA` VARCHAR(45) NULL,
  `SG_UF` VARCHAR(45) NULL,
  `SG_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `CD_CARGO` VARCHAR(45) NULL,
  `DS_CARGO` VARCHAR(45) NULL,
  `SQ_CANDIDATO` VARCHAR(45) NULL,
  `NR_CANDIDATO` VARCHAR(45) NULL,
  `NM_CANDIDATO` VARCHAR(450) NULL,
  `NM_URNA_CANDIDATO` VARCHAR(45) NULL,
  `NM_SOCIAL_CANDIDATO` VARCHAR(450) NULL,
  `NR_CPF_CANDIDATO` VARCHAR(45) NULL,
  `NM_EMAIL` VARCHAR(450) NULL,
  `CD_SITUACAO_CANDIDATURA` VARCHAR(450) NULL,
  `DS_SITUACAO_CANDIDATURA` VARCHAR(450) NULL,
  `CD_DETALHE_SITUACAO_CAND` VARCHAR(450) NULL,
  `DS_DETALHE_SITUACAO_CAND` VARCHAR(450) NULL,
  `TP_AGREMIACAO` VARCHAR(45) NULL,
  `NR_PARTIDO` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NM_PARTIDO` VARCHAR(45) NULL,
  `SG_LEGENDA` VARCHAR(45) NULL,
  `SQ_COLIGACAO` VARCHAR(450) NULL,
  `NM_COLIGACAO` VARCHAR(450) NULL,
  `DS_COMPOSICAO_COLIGACAO` VARCHAR(450) NULL,
  `CD_NACIONALIDADE` VARCHAR(45) NULL,
  `SG_UF_NASCIMENTO` VARCHAR(45) NULL,
  `CD_MUNICIPIO_NASCIMENTO` VARCHAR(45) NULL,
  `DT_NASCIMENTO` VARCHAR(45) NULL,
  `NR_IDADE_DATA_POSSE` VARCHAR(45) NULL,
  `NR_TITULO_ELEITORAL_CANDIDATO` VARCHAR(45) NULL,
  `CD_GENERO` VARCHAR(45) NULL,
  `DS_GENERO` VARCHAR(45) NULL,
  `CD_GRAU_INSTRUCAO` VARCHAR(45) NULL,
  `DS_GRAU_INSTRUCAO` VARCHAR(45) NULL,
  `CD_ESTADO_CIVIL` VARCHAR(45) NULL,
  `CD_COR_RACA` VARCHAR(45) NULL,
  `DS_COR_RACA` VARCHAR(45) NULL,
  `CD_OCUPACAO` VARCHAR(45) NULL,
  `DS_OCUPACAO` VARCHAR(45) NULL,
  `VR_MAX_DESPESA_CAMPANHA` VARCHAR(450) NULL,
  `CD_SIT_TOT_TURNO` VARCHAR(45) NULL,
  `DS_SIT_TOT_TURNO` VARCHAR(45) NULL,
  `ST_REELEICAO` VARCHAR(45) NULL,
  `ST_DECLARAR_BENS` VARCHAR(45) NULL,
  `NR_PROTOCOLO_CANDIDATURA` VARCHAR(45) NULL,
  `NR_PROCESSO` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`CNPJ`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`CNPJ` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`CNPJ` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ANO` VARCHAR(45) NULL,
  `NR_CNPJ` VARCHAR(45) NULL,
  `NM_PARTIDO` VARCHAR(450) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`BENS_CANDIDATOS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`BENS_CANDIDATOS` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`BENS_CANDIDATOS` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `DT_GERACAO` VARCHAR(45) NULL,
  `HH_GERACAO` VARCHAR(45) NULL,
  `ANO_ELEICAO` VARCHAR(45) NULL,
  `CD_TIPO_ELEICAO` VARCHAR(45) NULL,
  `NM_TIPO_ELEICAO` VARCHAR(45) NULL,
  `CD_ELEICAO` VARCHAR(45) NULL,
  `DS_ELEICAO` VARCHAR(45) NULL,
  `DT_ELEICAO` VARCHAR(45) NULL,
  `SG_UF` VARCHAR(45) NULL,
  `SG_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `SQ_CANDIDATO` VARCHAR(45) NULL,
  `NR_ORDEM_CANDIDATO` VARCHAR(45) NULL,
  `CD_TIPO_BEM_CANDIDATO` VARCHAR(45) NULL,
  `DS_TIPO_BEM_CANDIDATO` VARCHAR(450) NULL,
  `DS_BEM_CANDIDATO` VARCHAR(450) NULL,
  `VR_BEM_CANDIDATO` VARCHAR(450) NULL,
  `DT_ULTIMA_ATUALIZACAO` VARCHAR(45) NULL,
  `HH_ULTIMA_ATUALIZACAO` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`MOTIVO_CASSACAO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`MOTIVO_CASSACAO` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`MOTIVO_CASSACAO` (
  `id` INT NOT NULL,
  `DT_GERACAO` VARCHAR(45) NULL,
  `HH_GERACAO` VARCHAR(45) NULL,
  `ANO_ELEICAO` VARCHAR(45) NULL,
  `CD_TIPO_ELEICAO` VARCHAR(45) NULL,
  `NM_TIPO_ELEICAO` VARCHAR(45) NULL,
  `CD_ELEICAO` VARCHAR(45) NULL,
  `DS_ELEICAO` VARCHAR(45) NULL,
  `SG_UF` VARCHAR(45) NULL,
  `SG_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `SQ_CANDIDATO` VARCHAR(450) NULL,
  `DS_MOTIVO_CASSACAO` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`DESPESA_ANUAL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`DESPESA_ANUAL` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`DESPESA_ANUAL` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `DT_GERACAO` VARCHAR(45) NULL,
  `HH_GERACAO` VARCHAR(45) NULL,
  `CD_TP_ESFERA_PARTIDARIA` VARCHAR(45) NULL,
  `DS_TP_ESPERA_PARTIDARIA` VARCHAR(450) NULL,
  `SG_UF` VARCHAR(45) NULL,
  `CD_MUNICIPIO` VARCHAR(45) NULL,
  `NM_MUNICIPIO` VARCHAR(450) NULL,
  `NR_ZONA` VARCHAR(45) NULL,
  `NR_CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NM_PARTIDO` VARCHAR(450) NULL,
  `CD_TP_DOCUMENTO` VARCHAR(45) NULL,
  `DS_TP_DOCUMENTO` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `AA_AIDF` VARCHAR(450) NULL,
  `NR_AIDF` VARCHAR(450) NULL,
  `CD_TP_FORNECEDOR` VARCHAR(45) NULL,
  `DS_TP_FORNECEDOR` VARCHAR(450) NULL,
  `NR_CPF_CNPJ_FORNECEDOR` VARCHAR(450) NULL,
  `NM_FORNECEDOR` VARCHAR(450) NULL,
  `DS_GASTO` VARCHAR(450) NULL,
  `DT_PAGAMENTO` VARCHAR(45) NULL,
  `VR_GASTO` VARCHAR(45) NULL,
  `VR_PAGAMENTO` VARCHAR(45) NULL,
  `VR_DOCUMENTO` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`CONSULTA_LEGENDAS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`CONSULTA_LEGENDAS` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`CONSULTA_LEGENDAS` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `DATA_GERACAO` VARCHAR(45) NULL,
  `HORA_GERACAO` VARCHAR(45) NULL,
  `ANO_ELEICAO` VARCHAR(45) NULL,
  `NUM_TURNO` VARCHAR(45) NULL,
  `DESCRICAO_ELEICAO` VARCHAR(450) NULL,
  `SIGLA_UF` VARCHAR(45) NULL,
  `SIGLA_UE` VARCHAR(45) NULL,
  `NOME_UE` VARCHAR(45) NULL,
  `CODIGO_CARGO` VARCHAR(45) NULL,
  `DESCRICAO_CARGO` VARCHAR(450) NULL,
  `TIPO_LEGENDA` VARCHAR(45) NULL,
  `NUM_PARTIDO` VARCHAR(45) NULL,
  `SIGLA_PARTIDO` VARCHAR(45) NULL,
  `NOME_PARTIDO` VARCHAR(450) NULL,
  `SIGLA_COLIGACAO` VARCHAR(45) NULL,
  `NOME_COLIGACAO` VARCHAR(45) NULL,
  `COMPOSICAO_COLIGACAO` VARCHAR(450) NULL,
  `SEQUENCIAL_COLIGACAO` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`DESPESAS_PARTIDOS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`DESPESAS_PARTIDOS` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`DESPESAS_PARTIDOS` (
  `id` INT NOT NULL,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `SEQUENCIAL_DIRETORIO` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `UE` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `MUNICIPIO` VARCHAR(45) NULL,
  `TIPO_DIRETORIO` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `TIPO_DOCUMENTO` VARCHAR(45) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_FORNECEDOR` VARCHAR(450) NULL,
  `NM_FORNECEDOR` VARCHAR(450) NULL,
  `NM_FORNECEDOR_RF` VARCHAR(450) NULL,
  `COD_SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `SETOR_ECO_FORNECEDOR` VARCHAR(45) NULL,
  `DATA_DESPESA` VARCHAR(45) NULL,
  `VALOR_DESPESA` VARCHAR(45) NULL,
  `TIPO_DESPESA` VARCHAR(450) NULL,
  `DESC_DESPESA` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`RECEITAS_CANDIDATOS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`RECEITAS_CANDIDATOS` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`RECEITAS_CANDIDATOS` (
  `id` INT NOT NULL,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `SEQUENCIAL_CANDIDATO` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `MUNICIPIO` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NR_CANDIDATO` VARCHAR(45) NULL,
  `CARGO` VARCHAR(45) NULL,
  `NM_CANDIDATO` VARCHAR(45) NULL,
  `CPF_CANDIDATO` VARCHAR(450) NULL,
  `NR_RECIBO_ELEITORAL` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR_RF` VARCHAR(45) NULL,
  `SG_UE_DOADOR` VARCHAR(45) NULL,
  `NR_PARTIDO_DOADOR` VARCHAR(45) NULL,
  `NR_CANDIDATO_DOADOR` VARCHAR(45) NULL,
  `COD_SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `DATA_RECEITA` VARCHAR(45) NULL,
  `VALOR_RECEITA` VARCHAR(45) NULL,
  `TIPO_RECEITA` VARCHAR(450) NULL,
  `FONTE_RECURSO` VARCHAR(450) NULL,
  `ESPECIE_RECURSO` VARCHAR(450) NULL,
  `DESC_DA_RECEITA` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`DESPESAS_CANDIDATOS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`DESPESAS_CANDIDATOS` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`DESPESAS_CANDIDATOS` (
  `id` INT NOT NULL,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `SEQUENCIAL_CANDIDATO` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `MUNICIPIO` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NR_CANDIDATO` VARCHAR(45) NULL,
  `CARGO` VARCHAR(45) NULL,
  `NM_CANDIDATO` VARCHAR(450) NULL,
  `CPF_CANDIDATO` VARCHAR(450) NULL,
  `TIPO_DOCUMENTO` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_FORNECEDOR` VARCHAR(45) NULL,
  `NOME_FORNECEDOR` VARCHAR(45) NULL,
  `NOME_FORNECEDOR_RF` VARCHAR(45) NULL,
  `COD_SETOR_ECONOMICO_FORNECEDOR` VARCHAR(450) NULL,
  `SETOR_ECONOMICO_FORNECEDOR` VARCHAR(450) NULL,
  `DATA_DESPESA` VARCHAR(45) NULL,
  `VALOR_DESPESA` VARCHAR(45) NULL,
  `TIPO_DESPESA` VARCHAR(45) NULL,
  `DESC_DESPESA` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`DESPESAS_COMITES`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`DESPESAS_COMITES` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`DESPESAS_COMITES` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SEQUENCIAL_COMITE` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `TIPO_COMITE` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `TIPO_DOCUMENTO` VARCHAR(45) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_FORNECEDOR` VARCHAR(450) NULL,
  `NM_FORNECEDOR` VARCHAR(450) NULL,
  `NM_FORNECEDOR_RF` VARCHAR(450) NULL,
  `COD_SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `SETOR_ECO_FORNECEDOR` VARCHAR(45) NULL,
  `DATA_DESPESA` VARCHAR(45) NULL,
  `VALOR_DESPESA` VARCHAR(45) NULL,
  `TIPO_DESPESA` VARCHAR(450) NULL,
  `DESC_DESPESA` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`DESPESAS_CANDIDATOS_PRESTACAO_CONTAS_FINAL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`DESPESAS_CANDIDATOS_PRESTACAO_CONTAS_FINAL` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`DESPESAS_CANDIDATOS_PRESTACAO_CONTAS_FINAL` (
  `id` INT NOT NULL,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SEQUENCIAL_CANDIDATO` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NR_CANDIDATO` VARCHAR(45) NULL,
  `CARGO` VARCHAR(45) NULL,
  `NM_CANDIDATO` VARCHAR(450) NULL,
  `CPF_CANDIDATO` VARCHAR(450) NULL,
  `CPF_VICE_SUPLENTE` VARCHAR(450) NULL,
  `TIPO_DOCUMENTO` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_FORNECEDOR` VARCHAR(45) NULL,
  `NOME_FORNECEDOR` VARCHAR(45) NULL,
  `NOME_FORNECEDOR_RF` VARCHAR(45) NULL,
  `COD_SETOR_ECONOMICO_FORNECEDOR` VARCHAR(450) NULL,
  `SETOR_ECONOMICO_FORNECEDOR` VARCHAR(450) NULL,
  `DATA_DESPESA` VARCHAR(45) NULL,
  `VALOR_DESPESA` VARCHAR(45) NULL,
  `TIPO_DESPESA` VARCHAR(45) NULL,
  `DESC_DESPESA` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`DESPESAS_CANDIDATOS_RELATORIO_FINANCEIRO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`DESPESAS_CANDIDATOS_RELATORIO_FINANCEIRO` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`DESPESAS_CANDIDATOS_RELATORIO_FINANCEIRO` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SEQUENCIAL_CANDIDATO` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NR_CANDIDATO` VARCHAR(45) NULL,
  `CARGO` VARCHAR(45) NULL,
  `NM_CANDIDATO` VARCHAR(450) NULL,
  `CPF_CANDIDATO` VARCHAR(450) NULL,
  `CPF_VICE_SUPLENTE` VARCHAR(450) NULL,
  `TIPO_DOCUMENTO` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_FORNECEDOR` VARCHAR(45) NULL,
  `NOME_FORNECEDOR` VARCHAR(45) NULL,
  `NOME_FORNECEDOR_RF` VARCHAR(45) NULL,
  `COD_SETOR_ECONOMICO_FORNECEDOR` VARCHAR(450) NULL,
  `SETOR_ECONOMICO_FORNECEDOR` VARCHAR(450) NULL,
  `DATA_DESPESA` VARCHAR(45) NULL,
  `VALOR_DESPESA` VARCHAR(45) NULL,
  `TIPO_DESPESA` VARCHAR(45) NULL,
  `DESC_DESPESA` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`DESPESAS_PARTIDOS_PRESTACAO_CONTAS_FINAL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`DESPESAS_PARTIDOS_PRESTACAO_CONTAS_FINAL` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`DESPESAS_PARTIDOS_PRESTACAO_CONTAS_FINAL` (
  `id` INT NOT NULL,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SEQUENCIAL_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `TIPO_DIRETORIO` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `TIPO_DOCUMENTO` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_FORNECEDOR` VARCHAR(45) NULL,
  `NOME_FORNECEDOR` VARCHAR(45) NULL,
  `NOME_FORNECEDOR_RF` VARCHAR(45) NULL,
  `COD_SETOR_ECONOMICO_FORNECEDOR` VARCHAR(450) NULL,
  `SETOR_ECONOMICO_FORNECEDOR` VARCHAR(450) NULL,
  `DATA_DESPESA` VARCHAR(45) NULL,
  `VALOR_DESPESA` VARCHAR(45) NULL,
  `TIPO_DESPESA` VARCHAR(45) NULL,
  `DESC_DESPESA` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`DESPESAS_PARTIDOS_RELATORIO_FINANCEIRO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`DESPESAS_PARTIDOS_RELATORIO_FINANCEIRO` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`DESPESAS_PARTIDOS_RELATORIO_FINANCEIRO` (
  `id` INT NOT NULL,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SEQUENCIAL_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `TIPO_DIRETORIO` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `TIPO_DOCUMENTO` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_FORNECEDOR` VARCHAR(45) NULL,
  `NOME_FORNECEDOR` VARCHAR(45) NULL,
  `NOME_FORNECEDOR_RF` VARCHAR(45) NULL,
  `COD_SETOR_ECONOMICO_FORNECEDOR` VARCHAR(450) NULL,
  `SETOR_ECONOMICO_FORNECEDOR` VARCHAR(450) NULL,
  `DATA_DESPESA` VARCHAR(45) NULL,
  `VALOR_DESPESA` VARCHAR(45) NULL,
  `TIPO_DESPESA` VARCHAR(45) NULL,
  `DESC_DESPESA` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`RECEITA_ANUAL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`RECEITA_ANUAL` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`RECEITA_ANUAL` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `DT_GERACAO` VARCHAR(45) NULL,
  `HH_GERACAO` VARCHAR(45) NULL,
  `CD_TP_ESFERA_PARTIDARIA` VARCHAR(45) NULL,
  `DS_TP_ESPERA_PARTIDARIA` VARCHAR(450) NULL,
  `SG_UF` VARCHAR(45) NULL,
  `CD_MUNICIPIO` VARCHAR(45) NULL,
  `NM_MUNICIPIO` VARCHAR(450) NULL,
  `NR_ZONA` VARCHAR(45) NULL,
  `NR_CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NM_PARTIDO` VARCHAR(450) NULL,
  `CD_TP_ORIGEM_DOACAO` VARCHAR(450) NULL,
  `DS_TP_ORIGEM_DOACAO` VARCHAR(450) NULL,
  `NR_CPF_CNPJ_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR` VARCHAR(450) NULL,
  `CD_TP_ESFERA_PARTIDARIA_DOADOR` VARCHAR(45) NULL,
  `DS_TP_ESFERA_PARTIDARIA_DOADOR` VARCHAR(450) NULL,
  `SG_UF_DOADOR` VARCHAR(45) NULL,
  `CD_MUNICIPIO_DOADOR` VARCHAR(45) NULL,
  `NM_MUNICIPIO_DOADOR` VARCHAR(450) NULL,
  `NR_ZONA_DOADOR` VARCHAR(45) NULL,
  `SQ_CANDIDATO_DOADOR` VARCHAR(45) NULL,
  `NR_CANDIDATO_DOADOR` VARCHAR(45) NULL,
  `CD_CANDIDATO_CARGO_DOADOR` VARCHAR(45) NULL,
  `DS_CANDIDATO_CARGO_DOADOR` VARCHAR(450) NULL,
  `CD_TP_FONTE_RECURSO` VARCHAR(45) NULL,
  `DS_TP_FONTE_RECURSO` VARCHAR(450) NULL,
  `CD_TP_NATUREZA_RECURSO` VARCHAR(45) NULL,
  `DS_TP_NATUREZA_RECURSO` VARCHAR(450) NULL,
  `CD_TP_ESPECIE_RECURSO` VARCHAR(45) NULL,
  `DS_TP_ESPECIE_RECURSO` VARCHAR(450) NULL,
  `NR_RECIBO_DOACAO` VARCHAR(45) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `DT_RECEITA` VARCHAR(45) NULL,
  `DS_RECEITA` VARCHAR(450) NULL,
  `VR_RECEITA` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`RECEITAS_CANDIDATOS_PRESTACAO_CONTAS_FINAL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`RECEITAS_CANDIDATOS_PRESTACAO_CONTAS_FINAL` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`RECEITAS_CANDIDATOS_PRESTACAO_CONTAS_FINAL` (
  `id` INT NOT NULL,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SEQUENCIAL_CANDIDATO` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NR_CANDIDATO` VARCHAR(45) NULL,
  `CARGO` VARCHAR(45) NULL,
  `NM_CANDIDATO` VARCHAR(45) NULL,
  `CPF_CANDIDATO` VARCHAR(450) NULL,
  `CPF_VICE_SUPLENTE` VARCHAR(450) NULL,
  `NR_RECIBO_ELEITORAL` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR_RF` VARCHAR(45) NULL,
  `SG_UE_DOADOR` VARCHAR(45) NULL,
  `NR_PARTIDO_DOADOR` VARCHAR(45) NULL,
  `NR_CANDIDATO_DOADOR` VARCHAR(45) NULL,
  `COD_SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `DATA_RECEITA` VARCHAR(45) NULL,
  `VALOR_RECEITA` VARCHAR(45) NULL,
  `TIPO_RECEITA` VARCHAR(450) NULL,
  `FONTE_RECURSO` VARCHAR(450) NULL,
  `ESPECIE_RECURSO` VARCHAR(450) NULL,
  `DESC_DA_RECEITA` TEXT NULL,
  `CPF_CNPJ_DOADOR_ORIGINÁRIO` VARCHAR(45) NULL,
  `NM_DOADOR_ORIGINÁRIO` VARCHAR(450) NULL,
  `TIPO_DOADOR_ORIGINARIO` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR_ORIGINARIO` VARCHAR(45) NULL,
  `NM_DOADOR_ORIGINARIO_RF` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`RECEITAS_CANDIDATOS_RELATORIO_FINANCEIRO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`RECEITAS_CANDIDATOS_RELATORIO_FINANCEIRO` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`RECEITAS_CANDIDATOS_RELATORIO_FINANCEIRO` (
  `id` INT NOT NULL,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SEQUENCIAL_CANDIDATO` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NR_CANDIDATO` VARCHAR(45) NULL,
  `CARGO` VARCHAR(45) NULL,
  `NM_CANDIDATO` VARCHAR(45) NULL,
  `CPF_CANDIDATO` VARCHAR(450) NULL,
  `CPF_VICE_SUPLENTE` VARCHAR(450) NULL,
  `NR_RECIBO_ELEITORAL` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR_RF` VARCHAR(45) NULL,
  `SG_UE_DOADOR` VARCHAR(45) NULL,
  `NR_PARTIDO_DOADOR` VARCHAR(45) NULL,
  `NR_CANDIDATO_DOADOR` VARCHAR(45) NULL,
  `COD_SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `DATA_RECEITA` VARCHAR(45) NULL,
  `VALOR_RECEITA` VARCHAR(45) NULL,
  `TIPO_RECEITA` VARCHAR(450) NULL,
  `FONTE_RECURSO` VARCHAR(450) NULL,
  `ESPECIE_RECURSO` VARCHAR(450) NULL,
  `DESC_DA_RECEITA` TEXT NULL,
  `CPF_CNPJ_DOADOR_ORIGINÁRIO` VARCHAR(45) NULL,
  `NM_DOADOR_ORIGINÁRIO` VARCHAR(450) NULL,
  `TIPO_DOADOR_ORIGINARIO` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR_ORIGINARIO` VARCHAR(45) NULL,
  `NM_DOADOR_ORIGINARIO_RF` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`RECEITAS_PARTIDOS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`RECEITAS_PARTIDOS` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`RECEITAS_PARTIDOS` (
  `id` INT NOT NULL,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SEQUENCIAL_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `TIPO_DIRETORIO` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NR_RECIBO_ELEITORAL` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR_RF` VARCHAR(450) NULL,
  `SG_UE_DOADOR` VARCHAR(45) NULL,
  `NR_PARTIDO_DOADOR` VARCHAR(45) NULL,
  `NR_CANDIDATO_DOADOR` VARCHAR(45) NULL,
  `COD_SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `DATA_RECEITA` VARCHAR(45) NULL,
  `VALOR_RECEITA` VARCHAR(45) NULL,
  `TIPO_RECEITA` VARCHAR(450) NULL,
  `FONTE_RECURSO` VARCHAR(450) NULL,
  `ESPECIE_RECURSO` VARCHAR(450) NULL,
  `DESC_DA_RECEITA` TEXT NULL,
  `CPF_CNPJ_DOADOR_ORIGINÁRIO` VARCHAR(45) NULL,
  `NM_DOADOR_ORIGINÁRIO` VARCHAR(450) NULL,
  `TIPO_DOADOR_ORIGINARIO` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR_ORIGINARIO` VARCHAR(45) NULL,
  `NM_DOADOR_ORIGINARIO_RF` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`RECEITAS_COMITES`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`RECEITAS_COMITES` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`RECEITAS_COMITES` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `SEQUENCIAL_COMITE` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `MUNICIPIO` VARCHAR(45) NULL,
  `TIPO_COMITE` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `TIPO_DOCUMENTO` CHAR(1) NULL,
  `NR_DOCUMENTO` CHAR(1) NULL,
  `CPF_CNPJ_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR_RF` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `DATA_RECEITA` VARCHAR(45) NULL,
  `VALOR_RECEITA` VARCHAR(45) NULL,
  `TIPO_RECEITA` VARCHAR(450) NULL,
  `FONTE_RECURSO` VARCHAR(450) NULL,
  `ESPECIE_RECURSO` VARCHAR(450) NULL,
  `DESC_DA_RECEITA` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`RECEITAS_PARTIDOS_PRESTACAO_CONTAS_FINAL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`RECEITAS_PARTIDOS_PRESTACAO_CONTAS_FINAL` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`RECEITAS_PARTIDOS_PRESTACAO_CONTAS_FINAL` (
  `id` INT NOT NULL,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SEQUENCIAL_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `TIPO_DIRETORIO` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NR_RECIBO_ELEITORAL` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR_RF` VARCHAR(450) NULL,
  `SG_UE_DOADOR` VARCHAR(45) NULL,
  `NR_PARTIDO_DOADOR` VARCHAR(45) NULL,
  `NR_CANDIDATO_DOADOR` VARCHAR(45) NULL,
  `COD_SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `DATA_RECEITA` VARCHAR(45) NULL,
  `VALOR_RECEITA` VARCHAR(45) NULL,
  `TIPO_RECEITA` VARCHAR(450) NULL,
  `FONTE_RECURSO` VARCHAR(450) NULL,
  `ESPECIE_RECURSO` VARCHAR(450) NULL,
  `DESC_DA_RECEITA` TEXT NULL,
  `CPF_CNPJ_DOADOR_ORIGINÁRIO` VARCHAR(45) NULL,
  `NM_DOADOR_ORIGINÁRIO` VARCHAR(450) NULL,
  `TIPO_DOADOR_ORIGINARIO` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR_ORIGINARIO` VARCHAR(45) NULL,
  `NM_DOADOR_ORIGINARIO_RF` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dados_eleitorais`.`RECEITAS_PARTIDOS_RELATORIO_FINANCEIRO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dados_eleitorais`.`RECEITAS_PARTIDOS_RELATORIO_FINANCEIRO` ;

CREATE TABLE IF NOT EXISTS `dados_eleitorais`.`RECEITAS_PARTIDOS_RELATORIO_FINANCEIRO` (
  `id` INT NOT NULL,
  `COD_ELEICAO` VARCHAR(45) NULL,
  `DESC_ELEICAO` VARCHAR(450) NULL,
  `DATA_HORA` VARCHAR(45) NULL,
  `CNPJ_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `SEQUENCIAL_PRESTADOR_CONTA` VARCHAR(45) NULL,
  `UF` VARCHAR(45) NULL,
  `NR_UE` VARCHAR(45) NULL,
  `NM_UE` VARCHAR(45) NULL,
  `TIPO_DIRETORIO` VARCHAR(45) NULL,
  `SG_PARTIDO` VARCHAR(45) NULL,
  `NR_RECIBO_ELEITORAL` VARCHAR(450) NULL,
  `NR_DOCUMENTO` VARCHAR(45) NULL,
  `CPF_CNPJ_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR` VARCHAR(45) NULL,
  `NM_DOADOR_RF` VARCHAR(450) NULL,
  `SG_UE_DOADOR` VARCHAR(45) NULL,
  `NR_PARTIDO_DOADOR` VARCHAR(45) NULL,
  `NR_CANDIDATO_DOADOR` VARCHAR(45) NULL,
  `COD_SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR` VARCHAR(45) NULL,
  `DATA_RECEITA` VARCHAR(45) NULL,
  `VALOR_RECEITA` VARCHAR(45) NULL,
  `TIPO_RECEITA` VARCHAR(450) NULL,
  `FONTE_RECURSO` VARCHAR(450) NULL,
  `ESPECIE_RECURSO` VARCHAR(450) NULL,
  `DESC_DA_RECEITA` TEXT NULL,
  `CPF_CNPJ_DOADOR_ORIGINÁRIO` VARCHAR(45) NULL,
  `NM_DOADOR_ORIGINÁRIO` VARCHAR(450) NULL,
  `TIPO_DOADOR_ORIGINARIO` VARCHAR(45) NULL,
  `SETOR_ECO_DOADOR_ORIGINARIO` VARCHAR(45) NULL,
  `NM_DOADOR_ORIGINARIO_RF` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
