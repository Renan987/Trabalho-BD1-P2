-- =====================================================
-- CONSULTAS DO PROJETO MEDCORP
-- Banco de Dados I - CEFET-RJ
-- =====================================================

-- 1. Listar todos os pacientes cadastrados
SELECT *
FROM pacientes;

-- 2. Listar todos os médicos e suas especialidades
SELECT nome, especialidade
FROM medicos;

-- 3. Exibir agendamentos com paciente e médico
SELECT
    p.nome AS paciente,
    m.nome AS medico,
    a.data_hora,
    a.status
FROM agendamentos a
INNER JOIN pacientes p
    ON a.id_paciente = p.id_paciente
INNER JOIN medicos m
    ON a.id_medico = m.id_medico;

-- 4. Mostrar consultas realizadas
SELECT *
FROM agendamentos
WHERE status = 'Realizado';

-- 5. Quantidade de consultas por médico
SELECT
    m.nome,
    COUNT(*) AS total_consultas
FROM medicos m
INNER JOIN agendamentos a
    ON m.id_medico = a.id_medico
GROUP BY m.nome;

-- 6. Valor total faturado
SELECT
    SUM(valor_total) AS faturamento_total
FROM faturas;

-- 7. Consultas ordenadas por data
SELECT *
FROM agendamentos
ORDER BY data_hora;

-- 8. Pacientes atendidos por especialidade
SELECT
    p.nome AS paciente,
    m.especialidade
FROM pacientes p
INNER JOIN agendamentos a
    ON p.id_paciente = a.id_paciente
INNER JOIN medicos m
    ON a.id_medico = m.id_medico;

-- 9. Formas de pagamento utilizadas
SELECT
    forma_pagamento,
    COUNT(*) AS quantidade
FROM faturas
GROUP BY forma_pagamento;

-- 10. Médicos que realizaram mais de uma consulta
SELECT
    m.nome,
    COUNT(*) AS total_consultas
FROM medicos m
INNER JOIN agendamentos a
    ON m.id_medico = a.id_medico
GROUP BY m.nome
HAVING COUNT(*) >= 1;
