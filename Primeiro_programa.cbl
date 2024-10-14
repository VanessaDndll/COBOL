      ******************************************************************
      * Author: VANESSA
      * Date: 07/10/2024
      * Purpose: EXEMPLO DE UM PROGRAMA COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *comentario
       PROGRAM-ID. Primeiro_programa.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      ************************* CONTA SIMPLES **************************
      *
      * 77 WS-N1            PIC 9(02) VALUE ZEROS.
      * 77 WS-N2            PIC 9(02) VALUE ZEROS.
      * 77 WS-N3            PIC Z(03) VALUE ZEROS.
      *
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *      MOVE 5 TO WS-N1
      *      MOVE 3 TO WS-N2

      *      COMPUTE WS-N3 = WS-N1 + WS-N2

      *      DISPLAY "O RESULTADO EH: " WS-N3
      ******************************************************************

      ****************************** ACCEPT ****************************
      *
      ******* INPUT
      *  77 WS-NOME         PIC X(20).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *      DISPLAY 'DIGITE SEU NOME: '
      *      ACCEPT WS-NOME
      *      DISPLAY 'SEU NOME EH: ' WS-NOME
      *
      ******* PEGAR A DATA
      *  77 WS-DATA         PIC X(20).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *      ACCEPT WS-DATA FROM DATE *YYYYMMDD
      *      DISPLAY WS-DATA
      *
      ******* ANO + CONTAGEM DOS DIAS
      *  77 WS-CONT         PIC X(20).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *      ACCEPT WS-CONT FROM DAY *YYYYDDD
      *      DISPLAY WS-CONT
      *
      ******* DIA DA SEMANA
      *  77 WS-DW         PIC X(20).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *      ACCEPT WS-DW FROM DAY-OF-WEEK
      *      DISPLAY WS-DW
      *
      ******* HORARIO
      *  77 WS-HORA         PIC X(20).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *      ACCEPT WS-HORA FROM TIME
      *      DISPLAY WS-HORA
      ******************************************************************

            STOP RUN.
       END PROGRAM Primeiro_programa.
