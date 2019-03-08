PROGRAM TICKETPRICEPQ
IMPLICIT NONE

INTEGER :: PRICE = 0, AGE = 0

PRINT *, 'Age of child: '
READ *, AGE

CALL TICKET(AGE, PRICE)

PRINT *, 'TICKET PRICE FOR ENTERING THE ZOO IS => ', PRICE, 'NGN'

END PROGRAM TICKETPRICEPQ

SUBROUTINE TICKET(AGE, PRICE)
  INTEGER :: AGE, PRICE

  IF (AGE < 6) THEN
    PRICE = 0

  ELSE IF (AGE >= 6 .AND. AGE <= 12) THEN
    PRICE = 30000

  ELSE IF (AGE > 12) THEN
    PRICE = 60000
  ELSE
    PRINT *, 'THIS AGE TYPE DOES NOT EXIST!' 
  END IF


END SUBROUTINE TICKET
