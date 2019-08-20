//TT6PBE1R JOB TEDEVGRP,PBE,CLASS=A,REGION=32M,MSGCLASS=1,    
//             MSGLEVEL=(1,1),NOTIFY=TT6PBE1                  
//JOBLIB     DD  DSN=TT6PBE1.BUILD.LOAD,DISP=SHR              
//STEP01   EXEC PGM=HELLO                                     
//SYSTSPRT DD   SYSOUT=*                                      
//SYSPRINT DD   SYSOUT=*                                      
//SYSUDUMP DD   SYSOUT=*                                      
//SYSOUT   DD   SYSOUT=*                                      
//SYSIN    DD   *                                             
/*                                                            
//