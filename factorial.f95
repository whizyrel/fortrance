! A PROGRAM to calculate Nth Factorial
! using modules
MODULE FACCALC
  IMPLICIT NONE
  CONTAINS
  ! using function
  ! factorial calculator function of type integer
  INTEGER FUNCTION CALCFACTORIAL(VAL)
    INTEGER :: I, VAL, ANSWER = 1
    ! DO loop to loop from 1 till N
    DO I = 1, INT(VAL), 1
      ANSWER = ANSWER * I
    END DO
    ! returns variable CALCFACTORIAL of value ANSWER
    CALCFACTORIAL = ANSWER
  END FUNCTION CALCFACTORIAL
END MODULE FACCALC

PROGRAM FACTORIALCALCULATOR
! includes module written above into main program
USE FACCALC
! ensures the declaration of variable names
IMPLICIT NONE

! DECLARATION OF VARIABLES as integers
INTEGER:: N, RES

! prompts user for value
PRINT *, 'Enter the number (positive integer) to be calculated: '
READ *, N
PRINT *, 'The number you entered is => ', int(N)

! stores result in a variable => res
IF (N > 0) THEN
  RES = CALCFACTORIAL(N)
  PRINT *, 'The factorial of N being ', N, ' is ', RES
ELSE 
  PRINT *, 'The factorial of inputed value is undefined'
END IF

END PROGRAM FACTORIALCALCULATOR
