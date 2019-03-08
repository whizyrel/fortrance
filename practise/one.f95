! first practice

!PROGRAM first
!implicit none
! this program checks out the syntax write

!CHARACTER*100 :: value

!PRINT *, 'Enter a value to be written into a using variable using write (*,*): '
!READ *, value

!PRINT *, 'Syntax confirmed! write works. This is what you typed => ', value
!END PROGRAM first


! This program tests scientific intrinsic functions
PROGRAM INTRINSIC_FUNCTIONS
implicit none
REAL :: THETA
INTEGER :: CHOICE
REAL :: ANSWER

PRINT *, 'What mathematical operation would you like to perform?'
PRINT *, '=> 1. SINE'
PRINT *, '=> 2. COSINE'
PRINT *, '=> 3. TANGENT'
PRINT *, '=> 4. SECANT'
PRINT *, '=> 5. COSEC'
PRINT *, '=> 6. COTAN'
PRINT *, '=> 7. ARCCOS'
PRINT *, '=> 8. ARCTAN'
READ *, CHOICE

PRINT *, 'Enter the value for theta'
READ *, THETA

IF (CHOICE == 1) THEN
  PRINT *, 'You chose SINE operation'
  ANSWER = SIN(THETA)
  PRINT *, 'The equivalent result is => ', ANSWER
END IF
IF (CHOICE == 2) THEN
  PRINT *, 'You chose COSINE Operation'
  ANSWER = COS(THETA)
  PRINT *, 'The equivalent result is => ', ANSWER
END IF
IF (CHOICE == 3) THEN
  PRINT *, 'You chose TANGENT Operation'
  ANSWER = TAN(THETA)
  PRINT *, 'The equivalent result is => ', ANSWER
END IF
IF (CHOICE == 4) THEN
  PRINT *, 'You chose COSINE Operation'
  ! ANSWER = SEC(THETA)
  PRINT *, 'The equivalent result is => ', ANSWER
END IF
END PROGRAM INTRINSIC_FUNCTIONS
