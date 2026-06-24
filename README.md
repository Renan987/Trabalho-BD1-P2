# Trabalho-BD1-P2
# MedCorp - Sistema de Gestão de Clínicas Médicas

![GitHub](https://img.shields.io/badge/Projeto-Banco%20de%20Dados-blue)
![SQL](https://img.shields.io/badge/SQL-MySQL-orange)
![CEFET](https://img.shields.io/badge/CEFET-RJ-red)

## Sobre o Projeto

Este projeto foi desenvolvido para a disciplina de Banco de Dados I do CEFET-RJ.

O objetivo foi modelar e implementar um banco de dados para uma rede de clínicas médicas chamada **MedCorp**, permitindo o gerenciamento de pacientes, médicos, agendamentos, prontuários e faturamento.

---

🌎 Minimundo

A MedCorp é uma rede de clínicas médicas multidisciplinares que oferece consultas presenciais, exames laboratoriais e atendimentos especializados em diversas áreas da saúde.

Cada unidade da clínica possui sua própria estrutura física, composta por salas de consulta e salas destinadas à realização de exames. Essas unidades contam com profissionais de saúde de diferentes especialidades, permitindo que os pacientes tenham acesso a diversos tipos de atendimento em um único sistema.

Os pacientes podem realizar agendamentos para consultas e exames, sendo cada agendamento vinculado a um médico, uma sala e uma data específica. Durante o atendimento, o profissional responsável pode registrar informações clínicas em um prontuário eletrônico, armazenando dados importantes para o histórico médico do paciente.

Além do gerenciamento clínico, o sistema também controla o faturamento dos atendimentos realizados. Cada consulta ou exame gera uma fatura contendo informações financeiras, como valor cobrado, forma de pagamento e situação do pagamento.

O banco de dados foi desenvolvido para centralizar e organizar todas essas informações, garantindo integridade dos dados, redução de redundâncias e facilidade na geração de relatórios e consultas administrativas.

Dessa forma, o sistema MedCorp permite o gerenciamento eficiente de pacientes, médicos, unidades, salas, agendamentos, prontuários e faturamento, simulando um ambiente real de gestão de clínicas médicas.

---

## Objetivos

- Gerenciar pacientes
- Controlar médicos e especialidades
- Organizar agendamentos
- Registrar prontuários
- Gerenciar faturamento
- Garantir integridade dos dados

---

## Modelo Conceitual

![Modelo Conceitual](modelo_conceitual.png)

---

## Entidades Principais

### Paciente
- CPF
- Nome
- Data de nascimento
- Gênero
- Telefone
- E-mail

### Médico
- CRM
- Nome
- Especialidade
- Telefone
- E-mail

### Agendamento
- Data
- Hora
- Status

### Sala
- Número
- Tipo
- Capacidade

### Unidade
- CNPJ
- Nome Fantasia
- Telefone

### Fatura
- Valor Total
- Forma de Pagamento
- Data de Emissão

---

## Relacionamentos

- Um paciente pode realizar vários agendamentos.
- Um médico pode atender vários pacientes.
- Uma unidade possui diversas salas.
- Uma sala pode receber diversos agendamentos.
- Cada agendamento gera uma única fatura.

---

## Modelo Físico

Tabelas implementadas:

![Modelo Físico](modelo_fisico.png)

---

## Tecnologias Utilizadas

- SQL
- MySQL
- Draw.io
- GitHub

---

## Aluno

Renan Brilhante

CEFET-RJ - Sistemas de Informação

Disciplina: Banco de Dados I

Professor: Rafael Costa
