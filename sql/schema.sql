CREATE DATABASE medcorp;
USE medcorp;

CREATE TABLE unidades (
    id_unidade INT AUTO_INCREMENT PRIMARY KEY,
    cnpj VARCHAR(18) NOT NULL,
    nome_fantasia VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE salas (
    id_sala INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(10) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    capacidade INT,
    id_unidade INT NOT NULL,
    FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade)
);

CREATE TABLE medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    crm VARCHAR(20) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_nasc DATE NOT NULL,
    genero VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE agendamentos (
    id_agendamento INT AUTO_INCREMENT PRIMARY KEY,
    data_hora DATETIME NOT NULL,
    status VARCHAR(30) NOT NULL,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    id_sala INT NOT NULL,

    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico),
    FOREIGN KEY (id_sala) REFERENCES salas(id_sala)
);

CREATE TABLE prontuarios (
    id_prontuario INT AUTO_INCREMENT PRIMARY KEY,
    anamnese TEXT,
    diagnostico TEXT,
    receita TEXT,
    id_agendamento INT UNIQUE,

    FOREIGN KEY (id_agendamento)
        REFERENCES agendamentos(id_agendamento)
);

CREATE TABLE faturas (
    id_fatura INT AUTO_INCREMENT PRIMARY KEY,
    valor_total DECIMAL(10,2),
    forma_pagamento VARCHAR(50),
    data_emissao DATE,
    status_pagamento VARCHAR(30),
    id_agendamento INT UNIQUE,

    FOREIGN KEY (id_agendamento)
        REFERENCES agendamentos(id_agendamento)
);
