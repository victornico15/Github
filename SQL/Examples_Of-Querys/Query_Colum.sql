USE QA_PRD
SELECT * FROM parametros WHERE chave LIKE '%versao%'



USE SD_PRD_ULTIMO_PACOTE
SELECT * FROM parametros WHERE chave LIKE '%versao%' AND VALOR LIKE '%2022.3.0.0%'



OUTPUT



  NFE	VersaoManual	6.0	NULL	385	NULL	E4DC0864-136F-40CF-933C-55599286E56C  
  NFE	VersaoManual	6.0	NULL	385	NULL	E4DC0864-136F-40CF-933C-55599286E56C