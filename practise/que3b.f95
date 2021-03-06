PROGRAM PQQUE3B
  IMPLICIT NONE

  REAL :: F, C_F_CONVERTER
  INTEGER :: I

  ! PRINT *, 'Enter the value for Celcius'
  ! READ *, C

  DO I = 1, 100
    F = C_F_CONVERTER(I)
  END DO

END PROGRAM PQQUE3B

REAL FUNCTION C_F_CONVERTER(C)
  IMPLICIT NONE
  REAL, PARAMETER :: IKIND = (selected_INT_kind(100))
  REAL :: ANSWER
  INTEGER :: C

  PRINT *, 'CONVERTING THE ', C, ' TO FAHRENHEIT...'
  ANSWER = ((9.0/5.0) * C) + 32.0
  PRINT *, 'The Fahrenheit equivalent is => ', ANSWER, 'F'
  C_F_CONVERTER = ANSWER
END FUNCTION C_F_CONVERTER

