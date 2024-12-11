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
      *   01 WS-VARIAVEIS.
      *     03 WS-N1                    PIC S9(04)V99.
      *     03 WS-N2                    PIC S9(04)V99.
      *     03 WS-TEXTO                 PIC X(20).
      *     03 WS-STATUS                PIC 9.
      *     03 WS-LINHA                 PIC 99.
      *     03 WS-CODIGO                PIC 9.
      *     03 WS-CAMPO                 PIC 99.
      *     03 WS-DADO                  PIC 99.
      *
      * PROCEDURE DIVISION.
      *
      *     PERFORM P100-INICIALIZA
      *     PERFORM P500-CALC
      *     PERFORM P999-FIM
      *     .
      *
      * P000-ERRO.
      *     DISPLAY 'ERRO DE PROCESSAMENTO'
      *     PERFORM P999-FIM.
      *
      * P100-INICIALIZA.
      *     INITIALISE WS-VARIAVEIS.
      *
      * P500-CALC.
      *
      ******* CONDIÇÃO DE CLASSE
      *
      *     SET WS-N2                   TO 5.
      *     COMPUTE WS-N1 = WS-N1 + (WS-N2 * 3)
      *                     ON SIZE ERROR PERFORM P000-ERRO
      *     END-COMPUTE
      *
      *     MOVE 'TEXTO'                TO WS-TEXTO
      *
      *     IF WS-N2 IS NUMERIC THEN
      *         DISPLAY 'EH NUMERICO!'
      *     ELSE
      *         DISPLAY 'NAO EH NUMERICO!'
      *         PERFORM P000-ERRO
      *     END-IF
      *
      ******* NOME DE CONDIÇÃO
      *
      *     DISPLAY 'DIGITE O STATUS: '
      *     ACCEPT WS-STATUS
      *
      *     IF WS-STATUS = 1 THEN
      *         DISPLAY 'MULHER'.
      *     IF WS-STATUS = 2 THEN
      *         DISPLAY 'HOMEM'.
      *     IF WS-STATUS = 3 THEN
      *         DISPLAY 'OUTRO'.
      *     IF WS-STATUS GREATER 3 THEN
      *         PERFORM P000-ERRO.
      *
      ******* CONDIÇÃO DE RELAÇÃO
      *
      *     DISPLAY 'DIGITE O NUMERO DA LINHA: '
      *     ACCEPT WS-LINHA
      *
      *     DISPLAY 'DIGITE O NUMERO DO CODIGO: '
      *     ACCEPT WS-CODIGO
      *
      *     DISPLAY 'DIGITE O NUMERO DO CAMPO: '
      *     ACCEPT WS-CAMPO
      *
      *     DISPLAY 'DIGITE O NUMERO DO DADO: '
      *     ACCEPT WS-DADO
      *
      *     IF WS-LINHA GREATER 30
      *         DISPLAY 'LINHA MAIOR QUE 30'
      *     ELSE
      *         PERFORM P000-ERRO.
      *
      *     IF WS-CODIGO = 2
      *         DISPLAY 'CODIGO ESTA OK'
      *     ELSE
      *         PERFORM P000-ERRO.
      *
      *     IF WS-CAMPO NOT LESS WS-DADO
      *         DISPLAY 'CAMPO ESTA OK'
      *     ELSE
      *         PERFORM P000-ERRO.
      *
      ******* CONDIÇÃO DE SINAL
      *
      *     COMPUTE WS-N1 = WS-N2 * 1
      *
      *     IF WS-N1 IS POSITIVE THEN
      *         DISPLAY 'OK, EH POSITIVO'
      *     ELSE
      *         DISPLAY 'NAO EH POSITIVO'
      *     END-IF
      *
      *     IF WS-N2 IS GREATER THAN (WS-N1 ** 2 - 4 * WS-N2)
      *         DISPLAY 'OK, CALCULO CERTO: ' WS-N2
      *     ELSE
      *         DISPLAY 'NAO OK: ' WS-N2
      *     END-IF
      *     .
      *
      * P999-FIM.
      ******************************************************************

      **************************** EVALUATE ****************************
      *
      *   01 WS-VARIAVEIS.
      *     03 WS-MES               PIC 99.
      *     03 WS-STATUS            PIC 99.
      *
      * PROCEDURE DIVISION.
      *
      *     DISPLAY 'DIGITE UM NUMERO DE UM MES: '
      *     ACCEPT WS-MES
      *
      *     DISPLAY 'DIGITE UM NUMERO DE STATUS: '
      *     ACCEPT WS-STATUS
      *
      *     EVALUATE WS-MES
      *         WHEN 01
      *             DISPLAY 'JANEIRO'
      *         WHEN 02
      *             DISPLAY 'FEVEREIRO'
      *         WHEN 03
      *             DISPLAY 'MARCO'
      *         WHEN OTHER
      *             DISPLAY 'MES INDISPONIVEL!'
      *     END-EVALUATE
      *
      *     EVALUATE WS-STATUS
      *         WHEN 01
      *             DISPLAY 'MULHER'
      *         WHEN 02
      *             DISPLAY 'HOMEM'
      *         WHEN 03
      *             DISPLAY 'OUTROS'
      *         WHEN OTHER
      *             DISPLAY 'STATUS INDISPONIVEL!'
      *     END-EVALUATE
      ******************************************************************

      *************************** REPETIÇÃO ****************************
      *
      *   01 WS-VARIAVEIS.
      *     03 WS-COUNT                 PIC 99.
      *     03 WS-TOT                   PIC 99.
      *     03 WS-IND                   PIC 99.
      *
      * PROCEDURE DIVISION.
      *
      * P100-INICIO.
      *     INITIALISE WS-VARIAVEIS.
      *     PERFORM P300-PROCESSA-1     THRU P300-FIM 3 TIMES
      *     PERFORM P500-PROCESSA-2     THRU P500-FIM WITH TEST
      *                                 BEFORE UNTIL WS-COUNT = 5
      *     PERFORM P700-PROCESSA-3     THRU P700-FIM
      *     PERFORM P900-FINALIZA
      *     .
      *
      ******* TIMES
      * P300-PROCESSA-1.
      *     ADD 1                       TO WS-COUNT
      *     DISPLAY "CONTADOR: " WS-COUNT
      *
      *     MOVE ZEROS                  TO WS-TOT
      *     PERFORM 3 TIMES
      *     ADD 1                       TO WS-TOT
      *     DISPLAY 'WS-TOT: ' WS-TOT
      *     END-PERFORM
      *     .
      * P300-FIM.
      *
      ******* UNTIL
      * P500-PROCESSA-2.
      *     ADD 1                       TO WS-COUNT
      *     DISPLAY "CONTADOR: " WS-COUNT
      *
      *     MOVE ZEROS                  TO WS-TOT
      *     PERFORM WITH TEST BEFORE UNTIL WS-TOT = 3
      *     ADD 1                       TO WS-TOT
      *     DISPLAY 'WS-TOT: ' WS-TOT
      *     END-PERFORM
      *     .
      * P500-FIM.
      *
      ******* VARYING
      * P700-PROCESSA-3.
      *     PERFORM VARYING WS-IND FROM 2 BY 2 UNTIL WS-IND GREATER 5
      *     DISPLAY 'WS-IND: ' WS-IND
      *     END-PERFORM
      *     .
      * P700-FIM.
      *
      * P900-FINALIZA.
      ******************************************************************

      *************************** STRING II ****************************
      *
      ******* LAYOUT
         77 WS-TM-1                    PIC 99.
         77 WS-TM-2                    PIC 99.

       COPY LAYOUT001.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 'Vanessa'              TO WS-PRIMEIRO-NOME
           MOVE 'Dndll'                TO WS-ULTIMO-NOME

           MOVE '551123456789'        TO WS-TELEFONE

           MOVE 'RUA NOVA, 997'        TO WS-RUA
           MOVE 'JORDANA'              TO WS-BAIRRO
           MOVE 'SAO PAULO'            TO WS-CIDADE
           MOVE 'SP'                   TO WS-UF

           MOVE '0845530'              TO WS-CEP

           MOVE 'BRASILEIRA'           TO WS-NACINALIDADE

           MOVE 'CONSULTORA'           TO WS-PROFISSAO

      ******* FORMATAÇÃO
           MOVE ZEROS                  TO WS-TM-1
           INSPECT FUNCTION REVERSE(WS-PRIMEIRO-NOME)
                            TALLYING WS-TM-1 FOR LEADING ' '

           DISPLAY '1 - NOME COMPLETO: ' WS-PRIMEIRO-NOME
                 (1:(FUNCTION LENGTH(WS-PRIMEIRO-NOME) - WS-TM-1))
                                         ' '
                                         WS-ULTIMO-NOME

           DISPLAY '2 - TELEFONE     : ' '+' WS-PAIS ' ' WS-DDD ' '
                                         WS-PREFIXO '-' WS-SUFIXO

           MOVE ZEROS                  TO WS-TM-1
           INSPECT FUNCTION REVERSE(WS-RUA)
                            TALLYING WS-TM-1 FOR LEADING ' '
           MOVE ZEROS                  TO WS-TM-1
           INSPECT FUNCTION REVERSE(WS-CIDADE)
                            TALLYING WS-TM-2 FOR LEADING ' '
           DISPLAY '3 - ENDERECO     : ' WS-RUA
                 (1:(FUNCTION LENGTH(WS-RUA) - WS-TM-1))
                                         WS-BAIRRO
                                         WS-CIDADE
                 (1:(FUNCTION LENGTH(WS-CIDADE) - WS-TM-2)) ' '
                                         WS-UF

                 FUNCTION CONCATENATE(' - CEP: ' WS-CEP-1 '-' WS-CEP-2)

           DISPLAY '4 - NACIONALIDADE: ' WS-NACINALIDADE
           DISPLAY '5 - PROFISSAO    : ' WS-PROFISSAO

            STOP RUN.
       END PROGRAM Primeiro_programa.
