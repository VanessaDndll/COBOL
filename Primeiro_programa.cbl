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

      ****************************** INSPECT ***************************
      *
      *   77 WS-TEXTO       PIC X(90) VALUE "Atualmente estudo COBOL, u"-
      *-"ma linguagem bem legal e divertida. Vale muito a pena começar.".
      *   77 WS-TOTAL       PIC 9(3).
      *
      * PROCEDURE DIVISION.
      *
      ******* EXAMINAR/CONTAR
      *     INSPECT WS-TEXTO TALLYING WS-TOTAL FOR ALL "a".
      *     DISPLAY "O TOTAL DE a: " WS-TOTAL
      *
      ******* MODIFICAR
      *     INSPECT WS-TEXTO REPLACING ALL "a" BY "Y".
      *     DISPLAY WS-TEXTO
      ******************************************************************

      *************************** INITIALISE ***************************
      *
      *   01 WS-NOME.
      *     03 WS-PRIMEIRO-NOME     PIC X(10) VALUE "VANESSA".
      *     03 FILLER               PIC X(10) VALUE "DNDLL".
      *     03 WS-IDADE             PIC 9(03) VALUE 19.
      *
      * PROCEDURE DIVISION.
      *
      *     DISPLAY 'SAIDA 1: '
      *     DISPLAY WS-NOME
      *
      *     DISPLAY 'SAIDA 2: '
      *     INITIALISE WS-NOME REPLACING ALPHANUMERIC BY 'SPACES'
      *                                  NUMERIC      BY  3.
      *     DISPLAY WS-NOME
      *
      *     DISPLAY 'SAIDA 3: '
      *     INITIALISE WS-NOME
      *     DISPLAY WS-NOME
      *
      *     DISPLAY 'SAIDA 4: '
      *     INITIALISE WS-NOME REPLACING ALPHANUMERIC BY SPACES
      *                                  NUMERIC      BY ZEROS.
      *     DISPLAY WS-NOME
      ******************************************************************

      *************************** STRING *******************************
      *
      *   77 WS-CONTEUDO            PIC X(30) VALUE SPACES.
      *   77 WS-TEXTO               PIC X(40) VALUE SPACES.
      *   77 WS-PONTEIRO            PIC 9(02) VALUE ZEROS.
      *
      * PROCEDURE DIVISION.
      *
      ******* SIMPLES
      *
      *     INITIALISE WS-CONTEUDO
      *     STRING
      *         'VANESSA'
      *         ' '
      *         'DNDLL'
      *         DELIMITED BY SIZE INTO WS-CONTEUDO
      *     END-STRING
      *
      *     DISPLAY WS-CONTEUDO
      *
      ******* POSICIONAL
      *
      *     INITIALISE WS-CONTEUDO
      *     INITIALISE WS-TEXTO
      *
      *>         123456789012345678901234567890123456
      *     MOVE 'O PROFESSOR GOSTA DE MINISTRAR COBOL' TO WS-TEXTO
      *
      *     STRING
      *         WS-TEXTO(1:21)
      *         WS-TEXTO(32:5)
      *         DELIMITED BY SIZE INTO WS-CONTEUDO
      *     END-STRING
      *
      *     DISPLAY WS-CONTEUDO
      *
      ******* DELIMITAR POR ALGO
      *
      *     INITIALISE WS-CONTEUDO
      *     INITIALISE WS-TEXTO
      *
      *     MOVE 'O PROFESSOR GOSTA DE MINISTRAR COBOL' TO WS-TEXTO
      *
      *     STRING
      *         WS-TEXTO
      *
      *         DELIMITED BY 'G' INTO WS-CONTEUDO
      *>       DELIMITED BY SPACES INTO WS-CONTEUDO
      *     END-STRING
      *
      *     DISPLAY WS-CONTEUDO
      *
      ******* POINTER
      *
      *     INITIALISE WS-CONTEUDO
      *     INITIALISE WS-TEXTO
      *
      *     MOVE 'O           GOSTA DE MINISTRAR COBOL' TO WS-TEXTO
      *     SET WS-PONTEIRO TO 3
      *
      *     STRING
      *         'PROFESSOR'
      *         DELIMITED BY SIZE INTO WS-TEXTO WITH POINTER WS-PONTEIRO
      *     END-STRING
      *
      *     DISPLAY WS-TEXTO
      *     DISPLAY WS-PONTEIRO
      *
      ******************************************************************

            STOP RUN.
       END PROGRAM Primeiro_programa.
