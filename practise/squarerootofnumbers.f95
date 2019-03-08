PROGRAM SQUAREROOTOFTWONO
IMPLICIT NONE

REAL :: A, B, C
LOGICAL :: HEY

WRITE (*, *) 'INPUT THE VALUE FOR A'
READ *, A

WRITE (*, *) 'INPUT THE VALUE FOR B'
READ *, B

IF (A < 0 .AND. B < 0) THEN
  C = (SQRT(ABS(A) * ABS(B)))
ELSE IF (A < 0 .OR. B < 0) THEN
  C = -(SQRT(ABS(A) * ABS(B)))
ELSE
  C = SQRT(A * B)
END IF

PRINT *, 'THE SQUARE ROOT OF THE NUMBERS ', A, ' AND ', B, ' IS ', C
HEY = .true.
PRINT *, HEY
END PROGRAM SQUAREROOTOFTWONO