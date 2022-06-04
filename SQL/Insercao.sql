USE Siga
INSERT INTO Curso(Nome)
VALUES ('ADS'),
		('COMEX')
GO
SELECT * FROM Curso

INSERT INTO Aluno(Nome, CodigoCurso)
VALUES ('Alicia Santos', 1),
	   ('Karine Santos', 1),
	   ('Leonardo Santos',1),
	   ('Adriano Silva', 2),
	   ('Roberto Silva', 2),
	   ('Gustavo Araujo', 2),
	   ('Narciso', 2)
GO

SELECT * FROM Aluno




INSERT INTO Disciplina(CodigoCurso, Codigo, Nome, Sigla, Turno, NumAulas)
VALUES (1, '4203-010', 'Arquitetura e Organiza��o de Computadores', 'AOC', 'T', '4'),
	   (1, '4203-020', 'Arquitetura e Organiza��o de Computadores', 'AOC', 'N', '4'),
	   (1,'4208-010', 'Laborat�rio de Hardware', 'LDH', 'T', '4'),
	   (1,'4226-004', 'Banco de Dados', 'BDD', 'T', '4'),
	   (1,'4213-003', 'Sistemas Operacionais I', 'SOI', 'T', '4'),
	   (1,'4213-013', 'Sistemas Operacionais I', 'SOI', 'N', '4'),
	   (1,'4233-005', 'Laborat�rio de Banco de Dados', 'LBD', 'T', '4'),
	   (2,'5005-220', 'M�todos Para a Produ��o do Conhecimento', 'MPC', 'T', '4')


GO

SELECT * FROM Disciplina

INSERT INTO Avaliacao(CodigoDisciplina, Tipo, Peso)
VALUES 
	--Arquitetura T e N
	('4203-010', 'P1', 0.3),
	('4203-010', 'P2', 0.5),
	('4203-010', 'T', 0.2),
    ('4203-020', 'P1', 0.3),
	('4203-020', 'P2', 0.5),
	('4203-020', 'T', 0.2),

	--LAB Hardware T
	('4208-010', 'P1', 0.3),
	('4208-010', 'P2', 0.5),
	('4208-010', 'T', 0.2),
	-- Banco de dados T
	('4226-004', 'P1', 0.3),
	('4226-004', 'P2', 0.5),
	('4226-004', 'T', 0.2),
	--Sistemas operacionais T E e N
	('4213-013', 'PE', 0.2),
	('4213-013', 'P1', 0.35),
	('4213-013', 'P2', 0.35),
	('4213-013', 'T', 0.3),
	('4213-003', 'PE', 0.2),
	('4213-003', 'P1', 0.35),
	('4213-003', 'P2', 0.35),
	('4213-003', 'T', 0.3),
	--Lab banco de dados T
	('4233-005', 'P1', 0.33),
	('4233-005', 'P2', 0.33),
	('4233-005', 'P3', 0.33),
	--M�todos Para a Produ��o do Conhecimento - COMEX T
	('5005-220', 'MC', 0.8),
	('5005-220', 'MR', 0.2)
	   
GO

INSERT INTO Avaliacao(CodigoDisciplina, Tipo, Peso)
VALUES 
	--Arquitetura T e N
	('4203-010', 'E', 1),
   ('4203-020', 'E', 1),

	--LAB Hardware T
	('4208-010', 'E', 1),
	-- Banco de dados T
	('4226-004', 'E', 1),

	--Sistemas operacionais T E e N
	('4213-013', 'E', 1),

	('4213-003', 'E', 1),

	--Lab banco de dados T
	('4233-005', 'E', 1),

	--M�todos Para a Produ��o do Conhecimento - COMEX T
	('5005-220', 'E',1)

GO
SELECT * FROM Avaliacao


INSERT INTO Aluno_Disciplina(RaAluno, CodigoDisciplina)
values (1002, '4203-010'),
		(1003, '4203-010'),
		(1004, '4233-005'),
		(1005, '4208-010'),
		(1006, '4213-013'),
		(1007, '4213-013'),
		(1001, '5005-220')

INSERT INTO Aluno_Disciplina(RaAluno, CodigoDisciplina)
values
		--(1004, '4203-010'),
		--(1005, '4203-010'),
		--(1006, '4203-010'),
		--(1007, '4203-010'),
		(1001, '4203-010')

INSERT INTO Aluno_Disciplina(RaAluno, CodigoDisciplina)
values (1002, '4213-003'),
		

SELECT * FROM Aluno_Disciplina




INSERT INTO Notas(RaAluno, CodigoAvaliacao)
VALUES (1001, 33),
       (1003, 32),
       (1004, 32),
	   (1005, 32),  
	   (1006, 32), 
	   (1007, 32),
	   (1001, 32)
GO

SELECT * FROM Notas

INSERT INTO Faltas(RaAluno, CodigoDisciplina, DataFalta ,Presenca)
VALUES (1002, '4203-010', '2021-05-28', 2),
       (1003, '4203-010', '2021-05-28', 0),
       (1004, '4233-005', '2021-05-29', 0),
	   (1005, '4208-010', '2021-05-29', 1),  
	   (1006, '4213-013', '2021-05-30', 2), 
	   (1007, '4213-013', '2021-05-30', 1)
	   
GO


select * from faltas where DataFalta = '2021-06-25'