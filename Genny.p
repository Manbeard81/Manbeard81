/* Random Number generator */
/* By Douglas Gill */

DEFINE VARIABLE iLoveNumbers AS INTEGER INITIAL 1 NO-UNDO.
DEFINE VARIABLE iNeedOne AS INTEGER INITIAL 1 NO-UNDO.
DEFINE VARIABLE iCanHas AS INTEGER INITIAL 1 NO-UNDO.
DEFINE VARIABLE iRandomize AS INTEGER EXTENT 100 NO-UNDO.
DEFINE VARIABLE iRandom AS INTEGER NO-UNDO.


DO iLoveNumbers = 1 TO 100:
    iRandomize[iLoveNumbers] = iLoveNumbers.
END.

DO iLoveNumbers= 100 TO 2 BY -1:
    iNeedOne = RANDOM(1, iLoveNumbers).
    IF (iNeedOne = iLoveNumbers) THEN NEXT.
    iCanHas = iRandomize[iLoveNumbers].
    iRandomize[iLoveNumbers] = iRandomize[iNeedOne].
    iRandomize[iNeedOne] = iCanHas.
    ASSIGN iRandom = iCanHas.
    END.



MESSAGE "Your lucky random number is:" iRandom VIEW-AS ALERT-BOX.
