


CREATE TABLE departamento (
cod_departamento INT (10) AUTO_INCREMENT PRIMARY KEY ,
nome_dep VARCHAR(80)
)

CREATE TABLE fornecedor (
cod_fornecedor INT (10) AUTO_INCREMENT  PRIMARY KEY,
uf CHAR(2),
obs VARCHAR(50),
telefone_comercial int(25),
celular int(20),
site VARCHAR(40),
razao_social VARCHAR(50),
cep CHAR(15),
bairro VARCHAR(30),
email VARCHAR(50),
numero_rua INT(10),
nome_representante VARCHAR(30),
nacionalidade VARCHAR(25),
cnpj CHAR(15),
nome_fornecedor VARCHAR(50),
cidade VARCHAR(40),
rua VARCHAR(30),
nome_fantasia VARCHAR(30)
)

CREATE TABLE epi (
cod_epi int(10) AUTO_INCREMENT  PRIMARY KEY,
situacao VARCHAR(30),
venc_ca date,
estoque_minimo int(200),
unidade VARCHAR(40),
ca int(15),
desc_epi VARCHAR(100),
nome_fornecedor VARCHAR(40),
nome_epi VARCHAR(50),
data_fabricacao date,
fabricante VARCHAR(40)
)

CREATE TABLE motivo (
cod_motivo int(10) AUTO_INCREMENT  PRIMARY KEY,
nome_motivo VARCHAR(40)
)

CREATE TABLE fabricante (
cod_fabricante int(10) AUTO_INCREMENT PRIMARY KEY,
cidade_fabricante VARCHAR(40),
uf_fabricante CHAR(2),
nome_fabricanter VARCHAR(40),
telefone_fabricante int(25)
)

CREATE TABLE ficha_epi (
cod_ficha_epi int(10) AUTO_INCREMENT PRIMARY KEY,
matricula_funcionario int(10),
quant_epi int(30),
ca int(10),
nome_epi VARCHAR(50),
data_devol_epi date,
data_entega_epi date,
obs_devolucao VARCHAR(200),
obs_entrega VARCHAR(200),
motivo_obtencao VARCHAR(50),
cod_epi int(10),
cod_motivo int(10),
FOREIGN KEY(cod_epi) REFERENCES epi (cod_epi),
FOREIGN KEY(cod_motivo) REFERENCES motivo (cod_motivo)
)



CREATE TABLE fabricante_epi (
cod_epi int(10),
cod_fabricante int(10),
FOREIGN KEY(cod_epi) REFERENCES epi (cod_epi),
FOREIGN KEY(cod_fabricante) REFERENCES fabricante (cod_fabricante)
)




CREATE TABLE funcionario (
matricula_funcionario int(10) AUTO_INCREMENT  PRIMARY KEY,
nacionalidade VARCHAR(40),
cpf CHAR(11),
idade int(10),
data_demissao date,
data_admissao date,
data_nascimento date,
uf char(2),
nome_funcionario char(40),
sobrenome_funcionario VARCHAR(100),
cidade varchar(40),
telefone1 int(15),
telefone2 int(15),
senha int(10),
rg varchar(30),
genero varchar(30),
status VARCHAR(20),
foto_func BLOB,
numero_rua int(10),
dep_funcionario varchar(40),
cod_departamento INT(10),
cod_cargo int(10),
FOREIGN KEY(cod_departamento) REFERENCES departamento (cod_departamento),
FOREIGN KEY(cod_cargo) REFERENCES cargo (cod_cargo)
)

CREATE TABLE tarefa (
cod_tarefa int(10) AUTO_INCREMENT PRIMARY KEY,
obs VARCHAR(300),
descri_tarefa VARCHAR(300),
hora_fim_tarefa time,
hora_inicio_tarefa time,
quantidade_funcionario_tarefa int(50),
data_fim_tarefa date,
data_inicio_tarefa date,
status_tarefa VARCHAR(25),
local_tarefa VARCHAR(100),
nome_tarefa VARCHAR(80)
)



CREATE TABLE cargo (
cod_cargo int(10) AUTO_INCREMENT  PRIMARY KEY,
nome_cargo VARCHAR(60),
descricao_cargo VARCHAR(80)
)


CREATE TABLE epi_fornecedor (
cod_epi int(10),
cod_fornecedor int(10),
FOREIGN KEY(cod_epi) REFERENCES epi (cod_epi),
FOREIGN KEY(cod_fornecedor) REFERENCES fornecedor (cod_fornecedor)
)


CREATE TABLE funcionario_fichaepi (
cod_ficha_epi int(10),
matricula_funcionario int,
FOREIGN KEY(cod_ficha_epi) REFERENCES ficha_epi (cod_ficha_epi)
)

CREATE TABLE funcionario_tarefa (
cod_tarefa int(10),
matricula_funcionario int
)

CREATE TABLE tarefa_epi (
cod_tarefa int(10),
cod_epi int(10),
FOREIGN KEY(cod_tarefa) REFERENCES tarefa (cod_tarefa),
FOREIGN KEY(cod_epi) REFERENCES epi (cod_epi)
)
