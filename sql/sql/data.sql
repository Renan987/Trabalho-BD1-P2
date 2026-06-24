-- Dados de exemplo

INSERT INTO unidades (cnpj, nome_fantasia, telefone)
VALUES
('12.345.678/0001-99', 'MedCorp Centro', '(21) 3000-1000');

INSERT INTO salas (numero, tipo, capacidade, id_unidade)
VALUES
('101', 'Consulta', 2, 1),
('102', 'Exame', 4, 1);

INSERT INTO medicos (crm, nome, especialidade, telefone, email)
VALUES
('CRM12345', 'Ana Carolina Souza', 'Cardiologia', '(21) 99999-1111', 'ana@medcorp.com'),
('CRM54321', 'Carlos Henrique Lima', 'Ortopedia', '(21) 99999-2222', 'carlos@medcorp.com');

INSERT INTO pacientes (cpf, nome, data_nasc, genero, telefone, email)
VALUES
('123.456.789-00', 'João da Silva', '1995-05-12', 'Masculino', '(21) 98888-1111', 'joao@email.com'),
('987.654.321-00', 'Maria Oliveira', '2000-09-20', 'Feminino', '(21) 97777-2222', 'maria@email.com');

INSERT INTO agendamentos (data_hora, status, id_paciente, id_medico, id_sala)
VALUES
('2026-06-15 09:00:00', 'Realizado', 1, 1, 1),
('2026-06-16 14:00:00', 'Agendado', 2, 2, 2);

INSERT INTO faturas (valor_total, forma_pagamento, data_emissao, status_pagamento, id_agendamento)
VALUES
(250.00, 'PIX', '2026-06-15', 'Pago', 1);
