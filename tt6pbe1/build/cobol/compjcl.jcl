//TT6PBE1C JOB TEDEVGRP,PBE,CLASS=A,REGION=32M,MSGCLASS=1,              00000100
//             MSGLEVEL=(1,1),NOTIFY=TT6PBE1                            00000200
//STEP1     EXEC  PGM=IGYCRCTL
//SYSPRINT  DD  SYSOUT=*
//SYSIN     DD  DSN=TT6PBE1.BUILD.COBOL(HELLO),DISP=SHR
//SYSUT1    DD  UNIT=SYSDA,SPACE=(CYL,(2,2))
//SYSUT2    DD  UNIT=SYSDA,SPACE=(CYL,(2,2))
//SYSUT3    DD  UNIT=SYSDA,SPACE=(CYL,(2,2))
//SYSUT4    DD  UNIT=SYSDA,SPACE=(CYL,(2,2))
//SYSUT5    DD  UNIT=SYSDA,SPACE=(CYL,(2,2))
//SYSUT6    DD  UNIT=SYSDA,SPACE=(CYL,(2,2))
//SYSUT7    DD  UNIT=SYSDA,SPACE=(CYL,(2,2))
//SYSLIN    DD  DSN=&&FCB,DISP=(NEW,PASS)
//LINK1     EXEC PGM=IEWBLINK,COND=(4,LT,STEP1)
//SYSLIN    DD  DSN=&&FCB,DISP=(OLD,DELETE)
//SYSLIB    DD DSN=CEE.SCEELKED,DISP=SHR
//SYSPRINT  DD  SYSOUT=*
//LKED.SYSLMOD   DD  DSN=TT6PBE1.BUILD.LOAD(HELLO),DISP=SHR
//*SYSIN    DD  DUMMY