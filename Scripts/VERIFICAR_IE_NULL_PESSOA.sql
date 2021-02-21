/**
* @author Ruan Alves
* Função: Verificar se existe IE nulas ou vazias, caso tenha, setar todas como ISENTO
*/
UPDATE PESSOA SET IE = 'ISENTO' WHERE IE IS NULL OR IE = ' ' OR IE = ''