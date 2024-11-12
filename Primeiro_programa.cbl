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

      *************************** UNSTRING *****************************
      *
      *   77 WS-NOME-COMPLETO           PIC X(50) VALUE SPACES.
      *   01 WS-NOME.
      *       03 WS-PRIM-NOME           PIC X(40) VALUE SPACES.
      *       03 WS-MEIO-NOME           PIC X(40) VALUE SPACES.
      *       03 WS-ULTI-NOME           PIC X(40) VALUE SPACES.
      *   77 WS-MOSTRA                  PIC X(50) VALUE SPACES.
      *
      *   01 WS-COUNT.
      *       03 WS-PONTEIRO            PIC 9(02) VALUE ZEROS.
      *       03 WS-TOT-CAMPOS          PIC 9(02) VALUE ZEROS.
      *       03 WS-TM-1                PIC 9(02) VALUE ZEROS.
      *       03 WS-TM-2                PIC 9(02) VALUE ZEROS.
      *       03 WS-TM-3                PIC 9(02) VALUE ZEROS.
      *
      * PROCEDURE DIVISION.
      *
      ******* SIMPLES
      *
      *     INITIALISE WS-NOME-COMPLETO WS-NOME WS-MOSTRA
      *
      *     MOVE 'VANESSA CRISTINA DONADELLI' TO WS-NOME-COMPLETO
      *
      *     UNSTRING
      *         WS-NOME-COMPLETO
      *         DELIMITED BY SPACE
      *         INTO WS-PRIM-NOME
      *              WS-MEIO-NOME
      *              WS-ULTI-NOME
      *     END-UNSTRING
      *
      *     DISPLAY '==== FORMA SIMPLES ===='
      *     DISPLAY 'PRIMEIRO NOME: ' WS-PRIM-NOME
      *     DISPLAY 'MEIO NOME: '     WS-MEIO-NOME
      *     DISPLAY 'ULTIMO NOME: '   WS-ULTI-NOME
      *
      ******* SIMPLES + ALL
      *
      *     INITIALISE WS-NOME-COMPLETO WS-NOME WS-MOSTRA
      *
      *     MOVE 'VANESSA     CRISTINA     DONADELLI' TO WS-NOME-COMPLETO
      *
      *     UNSTRING
      *         WS-NOME-COMPLETO
      *         DELIMITED BY ALL SPACE
      *         INTO WS-PRIM-NOME
      *              WS-MEIO-NOME
      *              WS-ULTI-NOME
      *     END-UNSTRING
      *
      *     DISPLAY '==== FORMA SIMPLES + ALL ===='
      *     DISPLAY 'PRIMEIRO NOME: ' WS-PRIM-NOME
      *     DISPLAY 'MEIO NOME: '     WS-MEIO-NOME
      *     DISPLAY 'ULTIMO NOME: '   WS-ULTI-NOME
      *
      ******* POINTER
      *
      *     INITIALISE WS-NOME-COMPLETO WS-NOME WS-MOSTRA WS-COUNT
      *
      *     MOVE 'VANESSA CRISTINA DONADELLI' TO WS-NOME-COMPLETO
      *     MOVE 03                           TO WS-PONTEIRO
      *
      *     UNSTRING
      *         WS-NOME-COMPLETO
      *         DELIMITED BY ALL SPACE
      *         INTO WS-PRIM-NOME
      *              WS-MEIO-NOME
      *              WS-ULTI-NOME
      *         WITH POINTER WS-PONTEIRO
      *         TALLYING IN WS-TOT-CAMPOS
      *     END-UNSTRING
      *
      *     DISPLAY '==== FORMA PONTEIRO ===='
      *     DISPLAY 'PRIMEIRO NOME: ' WS-PRIM-NOME
      *     DISPLAY 'MEIO NOME: '     WS-MEIO-NOME
      *     DISPLAY 'ULTIMO NOME: '   WS-ULTI-NOME
      *     DISPLAY 'PONTEIRO: '      WS-PONTEIRO
      *     DISPLAY 'TOT CAMPOS: '    WS-TOT-CAMPOS
      *
      ******* OR
      *
      *     INITIALISE WS-NOME-COMPLETO WS-NOME WS-MOSTRA WS-COUNT
      *
      *     MOVE '*VANESSA;CRISTINA*DONADELLI' TO WS-NOME-COMPLETO
      *     MOVE 01                           TO WS-PONTEIRO
      *
      *     UNSTRING
      *         WS-NOME-COMPLETO
      *         DELIMITED BY '*' OR ';'
      *         INTO WS-PRIM-NOME
      *              WS-MEIO-NOME
      *              WS-ULTI-NOME
      *         WITH POINTER WS-PONTEIRO
      *         TALLYING IN WS-TOT-CAMPOS
      *     END-UNSTRING
      *
      *     DISPLAY '==== FORMA COM OR ===='
      *     DISPLAY 'PRIMEIRO NOME: ' WS-PRIM-NOME
      *     DISPLAY 'MEIO NOME: '     WS-MEIO-NOME
      *     DISPLAY 'ULTIMO NOME: '   WS-ULTI-NOME
      *     DISPLAY 'PONTEIRO: '      WS-PONTEIRO
      *     DISPLAY 'TOT CAMPOS: '    WS-TOT-CAMPOS
      *
      ******* COUNT IN
      *
      *     INITIALISE WS-NOME-COMPLETO WS-NOME WS-MOSTRA WS-COUNT
      *
      *     MOVE '*VANESSA;CRISTINA*DONADELLI;' TO WS-NOME-COMPLETO
      *     MOVE 02                           TO WS-PONTEIRO
      *
      *     UNSTRING
      *         WS-NOME-COMPLETO
      *         DELIMITED BY '*' OR ';'
      *         INTO WS-PRIM-NOME COUNT IN WS-TM-1
      *              WS-MEIO-NOME COUNT IN WS-TM-2
      *              WS-ULTI-NOME COUNT IN WS-TM-3
      *         WITH POINTER WS-PONTEIRO
      *         TALLYING IN WS-TOT-CAMPOS
      *     END-UNSTRING
      *
      *     DISPLAY '==== FORMA COUNT IN ===='
      *     DISPLAY 'PRIMEIRO NOME: ' WS-PRIM-NOME
      *     DISPLAY 'MEIO NOME: '     WS-MEIO-NOME
      *     DISPLAY 'ULTIMO NOME: '   WS-ULTI-NOME
      *     DISPLAY 'PONTEIRO: '      WS-PONTEIRO
      *     DISPLAY 'TOT CAMPOS: '    WS-TOT-CAMPOS
      *     DISPLAY 'TAMANHO C1: '    WS-TM-1
      *     DISPLAY 'TAMANHO C2: '    WS-TM-2
      *     DISPLAY 'TAMANHO C3: '    WS-TM-3
      ******************************************************************

      ************************** ON SIZE ERROR *************************
      *
      *   77 WS-N1             PIC 9(02) VALUE ZEROS.
      *   77 WS-N2             PIC 9(02) VALUE ZEROS.
      *   77 WS-RES            PIC 9(02) VALUE ZEROS.
      *
      * PROCEDURE DIVISION.
      * P001-INICIO.
      *
      *     PERFORM P100-CALC.
      *     PERFORM P999-FIM.
      *
      * P100-CALC.
      *
      *     DISPLAY "DIGITE O PRIMEIRO NUMERO: " ACCEPT WS-N1.
      *     DISPLAY "DIGITE O SEGUNDO NUMERO: " ACCEPT WS-N2.
      *
      *     COMPUTE WS-RES = WS-N1 * WS-N2
      *         ON SIZE ERROR PERFORM P800-ERRO
      *     END-COMPUTE
      *
      *     DISPLAY "CALCULO OK! RESULTADO: " WS-RES
      *     .
      *
      * P800-ERRO.
      *         DISPLAY "ERRO NO CALCULO."
      *         PERFORM P999-FIM
      *         .
      *
      * P999-FIM.
      ******************************************************************

      *************************** LENGTH *******************************
      *
      *   77 WS-COMPRIMENTO         PIC 9(02) VALUE ZEROS.
      *   01 WS-ENDERECO.
      *     03 WS-RUA               PIC X(20).
      *     03 WS-BAIRRO            PIC X(20).
      *     03 WS-CIDADE            PIC X(40).
      *
      * PROCEDURE DIVISION.
      *
      *     DISPLAY 'O COMPRIMETO DO GRUPO EH: ' LENGTH OF WS-ENDERECO
      *
      *     COMPUTE WS-COMPRIMENTO = FUNCTION LENGTH (WS-ENDERECO)
      *
      *     DISPLAY 'OUTRA FORMA FUNCAO: ' WS-COMPRIMENTO
      *     .
      ******************************************************************

      **************************** CORR ********************************
      *
      *   01 WS-FUNCIONARIO.
      *     03 WS-NOME              PIC X(30).
      *     03 WS-IDADE             PIC 9(02).
      *     03 WS-CARGO             PIC X(20).
      *
      *   01 WS-FUNCIONARIO-BACKUP.
      *     03 WS-NOME              PIC X(30).
      *     03 WS-IDADE             PIC 9(02).
      *     03 WS-ENDERECO          PIC X(30).
      *
      * PROCEDURE DIVISION.
      *
      *     MOVE 'VANESSA DNDLL'    TO WS-NOME OF WS-FUNCIONARIO
      *     MOVE 19                 TO WS-IDADE OF WS-FUNCIONARIO
      *     MOVE 'ANALISTA'         TO WS-CARGO OF WS-FUNCIONARIO
      *
      *     MOVE WS-FUNCIONARIO TO WS-FUNCIONARIO-BACKUP
      *     MOVE CORR WS-FUNCIONARIO TO WS-FUNCIONARIO-BACKUP
      *
      *     DISPLAY 'WS-FUNCIONARIO:        ' WS-FUNCIONARIO
      *     DISPLAY 'WS-FUNCIONARIO-BACKUP: ' WS-FUNCIONARIO-BACKUP
      ******************************************************************

      ********************** MATEMATICA ALTERNATIVA ********************
      *
      *   77 WS-N1              PIC 99 VALUE 0.
      *   77 WS-N2              PIC 99 VALUE 0.
      *
      * PROCEDURE DIVISION.
      *
      *     PERFORM P001-INICIO
      *     PERFORM P500-CALC
      *     PERFORM P999-FIM
      *     .
      *
      * P001-INICIO.
      *     INITIALISE WS-N1 WS-N2
      *
      *     DISPLAY 'DIGITE O PRIMEIRO NUMERO: '
      *     ACCEPT WS-N1
      *     DISPLAY 'DIGITE O SEGUNDO NUMERO: '
      *     ACCEPT WS-N2
      *     .
      *
      * P300-ERRO.
      *     DISPLAY 'ERRO DE PROCESSAMENTO.'
      *     PERFORM P999-FIM
      *     .
      *
      * P500-CALC.
      *
      ******* ADD
      *
      *     DISPLAY 'FUNCAO ADD: '
      *     ADD WS-N1       TO       WS-N2
      *                     ON SIZE ERROR PERFORM P300-ERRO
      *     END-ADD
      *
      *     DISPLAY 'VALOR DE N2 APOS O ADD: ' WS-N2
      *
      ******* SUBTRACT
      *
      *     DISPLAY 'FUNCAO SUBTRACT: '
      *     SUBTRACT 2       FROM       WS-N2
      *                      ON SIZE ERROR PERFORM P300-ERRO
      *     END-SUBTRACT
      *
      *     DISPLAY 'VALOR DE N2 APOS O SUBTRACT: ' WS-N2
      *
      ******* MULTIPLY
      *
      *     DISPLAY 'FUNCAO MULTIPLY: '
      *     MULTIPLY 2       BY       WS-N2
      *                      ON SIZE ERROR PERFORM P300-ERRO
      *     END-MULTIPLY
      *
      *     DISPLAY 'VALOR DE N2 APOS O MULTIPLY: ' WS-N2
      *
      ******* DIVIDE
      *
      *     DISPLAY 'FUNCAO DIVIDE: '
      *     DIVIDE WS-N2       BY       WS-N1   GIVING WS-N2
      *                        ON SIZE ERROR PERFORM P300-ERRO
      *     END-DIVIDE
      *
      *     DISPLAY 'VALOR DE N2 APOS O DIVIDE: ' WS-N2
      *     .
      *
      * P999-FIM.
      *
      ******************************************************************

      **************************** IF **********************************
      *
         01 WS-VARIAVEIS.
           03 WS-N1                    PIC S9(04)V99.
           03 WS-N2                    PIC S9(04)V99.
           03 WS-TEXTO                 PIC X(20).
           03 WS-STATUS                PIC 9.

       PROCEDURE DIVISION.

           PERFORM P100-INICIALIZA
           PERFORM P500-CALC
           PERFORM P999-FIM
           .

       P000-ERRO.
           DISPLAY 'ERRO DE PROCESSAMENTO'
           PERFORM P999-FIM.

       P100-INICIALIZA.
           INITIALISE WS-VARIAVEIS.

       P500-CALC.
      ******* CONDIÇÃO DE CLASSE
           SET WS-N2                   TO 5.
           COMPUTE WS-N1 = WS-N1 + (WS-N2 * 3)
                           ON SIZE ERROR PERFORM P000-ERRO
           END-COMPUTE

           MOVE 'TEXTO'                TO WS-TEXTO

           IF WS-N2 IS NUMERIC THEN
               DISPLAY 'EH NUMERICO!'
           ELSE
               DISPLAY 'NAO EH NUMERICO!'
               PERFORM P000-ERRO
           END-IF

      ******* NOME DE CONDIÇÃO
           DISPLAY 'DIGITE O STATUS: '
           ACCEPT WS-STATUS

           IF WS-STATUS = 1 THEN
               DISPLAY 'MULHER'.
           IF WS-STATUS = 2 THEN
               DISPLAY 'HOMEM'.
           IF WS-STATUS = 3 THEN
               DISPLAY 'OUTRO'.
           IF WS-STATUS GREATER 3 THEN
               PERFORM P000-ERRO.

       P999-FIM.
            STOP RUN.
       END PROGRAM Primeiro_programa.
