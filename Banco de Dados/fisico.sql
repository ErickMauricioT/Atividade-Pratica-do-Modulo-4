/*CADASTRO DO USUARIO*/
create database cad_usu;
use cad_usu;

CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cpf BIGINT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    dataNasc DATE,
    endereco VARCHAR(100),
    email VARCHAR(100),
    telefone BIGINT,
    createDate DATE
);

select * from usuario;