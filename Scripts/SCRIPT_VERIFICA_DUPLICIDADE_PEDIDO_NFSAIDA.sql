USE [base_aa]
GO
CREATE UNIQUE INDEX verifica_Duplicidade ON nfsaida (NUMPEDVENDA) WHERE NUMPEDVENDA IS NOT NULL;