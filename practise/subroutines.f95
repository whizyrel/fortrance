PROGRAM SUBSANDFUNCS
IMPLICIT NONE

! purpose -> practise subroutines
INTEGER :: A, B, RES, ADDNUMBERS
INTEGER(1) :: CHOICE

PRINT *, 'Enter the first value'
READ *, A

PRINT *, 'Enter the second value'
READ *, B

WRITE (*,*) "WHAT WOULD YOU LIKE TO USE?"
WRITE (*,*) "1 => SUBROUTINE"
WRITE (*,*) "2 => FUNCTION"
READ (*, *) CHOICE

PRINT *, 'YOU CHOSE ', CHOICE, ' !'

IF (CHOICE == 1) THEN
  CALL numberAddition(A, B, RES)
ELSE IF (CHOICE == 2) THEN
  RES = ADDNUMBERS(A, B)
ELSE
  PRINT *, 'WRONG SELCTION, TRY AGAIN!'
  STOP
END IF

PRINT *, 'The result is ', RES

END PROGRAM SUBSANDFUNCS

! +++++++++++++++++++++++++++++++++++++++
! subroutines starts here

SUBROUTINE numberAddition(A, B, RES)
IMPLICIT NONE

INTEGER :: A, B, RES

RES = A + B

END SUBROUTINE numberAddition

INTEGER FUNCTION ADDNUMBERS(A, B)
  IMPLICIT NONE

  INTEGER :: RES, A, B

  RES = A + B
  PRINT *, "DONE...!"
  ADDNUMBERS = RES
END FUNCTION ADDNUMBERS
