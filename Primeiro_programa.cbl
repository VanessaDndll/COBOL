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
      *  77 WS-N1            PIC 9(02) VALUE ZEROS.
      *  77 WS-N2            PIC 9(02) VALUE ZEROS.
      *  77 WS-N3            PIC Z(03) VALUE ZEROS.
      *
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *    MOVE 5 TO WS-N1
      *    MOVE 3 TO WS-N2
      *
      *    COMPUTE WS-N3 = WS-N1 + WS-N2
      *
      *    DISPLAY "O RESULTADO EH: " WS-N3
      ******************************************************************

      ****************************** ACCEPT ****************************
      *
      ******* INPUT
      *  77 WS-NOME         PIC X(20).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *    DISPLAY 'DIGITE SEU NOME: '
      *    ACCEPT WS-NOME
      *    DISPLAY 'SEU NOME EH: ' WS-NOME
      *
      ******* PEGAR A DATA
      *  77 WS-DATA         PIC X(20).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *    ACCEPT WS-DATA FROM DATE *YYYYMMDD
      *    DISPLAY WS-DATA
      *
      ******* ANO + CONTAGEM DOS DIAS
      *  77 WS-CONT         PIC X(20).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *    ACCEPT WS-CONT FROM DAY *YYYYDDD
      *    DISPLAY WS-CONT
      *
      ******* DIA DA SEMANA
      *  77 WS-DW         PIC X(20).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *    ACCEPT WS-DW FROM DAY-OF-WEEK
      *    DISPLAY WS-DW
      *
      ******* HORARIO
      *  77 WS-HORA         PIC X(20).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *    ACCEPT WS-HORA FROM TIME
      *    DISPLAY WS-HORA
      ******************************************************************

      ****************************** MOVE ******************************
      *
      ******* VARIAVEL TO VARIAVEL
      *  77 WS-VA        PIC 9(2) VALUE 10.
      *  77 WS-VB        PIC 9(2).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *    MOVE WS-VA TO WS-VB.
      *
      *    DISPLAY "O VALOR DA VARIAVEL B: " WS-VB.
      *
      ******* LITERAL TO VARIAVEL
      *  77 WS-VA        PIC 9(3) VALUE 10.
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *    MOVE 100 TO WS-VA.
      *
      *    DISPLAY "O NOVO VALOR DA VARIAVEL A: " WS-VA.
      *
      ******* ATRIBUIÇÃO POSICIONAL
      *  77 WS-DATA            PIC X(20).
      *  77 WS-DATA-AA         PIC X(20).
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *    MOVE "12"       TO      WS-DATA(01:02).
      *    MOVE "/"        TO      WS-DATA(03:01).
      *    MOVE "03"       TO      WS-DATA(04:02).
      *    MOVE "/"        TO      WS-DATA(06:01).
      *    MOVE "2021"     TO      WS-DATA(07:04).
      *
      *    DISPLAY "DATA: " WS-DATA.
      *
      *    MOVE WS-DATA(07:04)     TO      WS-DATA-AA.
      *
      *    DISPLAY "O ANO: " WS-DATA-AA.
      ******************************************************************

      ****************************** SET *******************************
      *
      ******* SET LITERAL
      *  77 WS-NUM-1     PIC 9(2) VALUE ZERO.
      *  77 WS-NUM-2     PIC 9(2) VALUE ZERO.
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *    DISPLAY "O VALOR ANTIGO DE NUM 1: " WS-NUM-1
      *    SET WS-NUM-1        TO      5
      *    DISPLAY "O NOVO VALOR DE NUM 1: " WS-NUM-1
      *
      *    DISPLAY "O VALOR ANTIGO DE NUM 2: " WS-NUM-2
      *    SET WS-NUM-2        TO      WS-NUM-1
      *    DISPLAY "O NOVO VALOR DE NUM 2: " WS-NUM-2
      *
      ******* SET COM BOOLEANO
      *  01 WS-PAGTO  PIC X VALUE 'N'.
      *    88 WS-CONFIRM VALUE 'S' FALSE 'N'.
      *
      *PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      *
      *    DISPLAY "SITUACAO DO PAGAMENTO ATUAL: " WS-PAGTO
      *    SET WS-CONFIRM      TO      TRUE
      *    DISPLAY "NOVA SITUACAO DO PAGAMENTO ATUAL: " WS-PAGTO
      *    SET WS-CONFIRM      TO      FALSE
      *    DISPLAY "SITUACAO FINAL DO PAGAMENTO ATUAL: " WS-PAGTO
      ******************************************************************

      ************************** PERFORM - BÁSICO **********************
      *
      * PROCEDURE DIVISION.
      *
      * PERFORM P3-START THRU P3-END.
      * PERFORM P1-START THRU P1-END.
      * PERFORM P2-START THRU P2-END.
      * PERFORM P4-START THRU P4-END.
      *
      * PERFORM S2.
      * PERFORM S1.
      * PERFORM S3.
      *
      * S1 SECTION.
      * P1-START.
      *     DISPLAY "Plataforma 1".
      * P1-END.
      *
      * P2-START.
      *     DISPLAY "Plataforma 2".
      * P2-END.
      *
      * S2 SECTION.
      * P3-START.
      *     DISPLAY "Plataforma 3".
      * P3-END.
      *
      * S3 SECTION.
      * P4-START.
      *      STOP RUN.
      * P4-END.
      ******************************************************************

      ****************************** COMPUTE ***************************
      *
      *   77 WS-RESULT      PIC 9(4) VALUE ZEROS.
      *   77 WS-N1          PIC 99   VALUE ZEROS.
      *   77 WS-N2          PIC 99   VALUE ZEROS.
      *
      * PROCEDURE DIVISION.
      * MAIN-PROCEDURE.
      *
      *     COMPUTE WS-RESULT = 5 + 5
      *     COMPUTE WS-RESULT = WS-RESULT - 2
      *     COMPUTE WS-RESULT = WS-RESULT * 7
      *     COMPUTE WS-RESULT = WS-RESULT / 2
      *     COMPUTE WS-RESULT = WS-RESULT ** 2
      *
      *     DISPLAY WS-RESULT
      *
      *     DISPLAY "INFORME O PRIMEIRO NUMERO: "
      *     ACCEPT WS-N1
      *
      *     DISPLAY "INFORME O SEGUNDO NUMERO: "
      *     ACCEPT WS-N2
      *
      *     COMPUTE WS-RESULT = WS-N1 + WS-N2
      *     DISPLAY "O RESULTADO DA SUA SOMA: " WS-RESULT
      ******************************************************************

            STOP RUN.
       END PROGRAM Primeiro_programa.
