CHARACTER(LEN = 1) FUNCTION options()
  CHARACTER(LEN = 1) :: CHOICE

  WRITE (*, *) 'Choose either of letters "a" or "b":' 
  WRITE (*, *) 'a => Decrement ' 
  WRITE (*, *) 'b => Increment '

  READ (*,*) CHOICE

  options = CHOICE
END FUNCTION options

CHARACTER(LEN = 50) FUNCTION DECREMENT()
  IMPLICIT NONE

  INTEGER :: I

  PRINT * , 'DECREMENTING...'

  DO I = 10, 1, -1
    PRINT *, I
  END DO

  DECREMENT = 'DONE..!'
END FUNCTION DECREMENT 

CHARACTER(LEN = 50) FUNCTION INCREMENT()
  IMPLICIT NONE

  INTEGER(2) :: I

  PRINT * , 'INCREMENTING...'
  DO I = 0, 10, 1
    PRINT *, I
  END DO

  INCREMENT = 'DONE...!'
END FUNCTION INCREMENT 

! Using modules
MODULE DEC_INC_MOD
  IMPLICIT NONE
  CONTAINS

  CHARACTER(LEN = 5) FUNCTION INC_DEC(CHOICE)

    CHARACTER(LEN = 1) :: CHOICE, options
    CHARACTER(LEN = 50) :: MSG, DECREMENT, INCREMENT

    IF (CHOICE == 'a' .OR. CHOICE == 'A') THEN
      ! DECREMENTING
      MSG = DECREMENT()
      WRITE(*,*) MSG
    ELSE IF (CHOICE == 'B' .OR. CHOICE == 'b') THEN
      ! INCREMENTING
      MSG = INCREMENT()
      WRITE(*,*) MSG
    ELSE
      PRINT *, "You've made an invalid selection."
      PRINT *, "Do you wanna try again? 'y' or 'n'"
      READ *, CHOICE
      IF(CHOICE == 'Y' .OR. CHOICE == 'y') THEN
        PRINT *, 'You chose to continue...'
        CHOICE = options()
        ! MSG = INC_DEC(CHOICE)
        PRINT *, MSG
      ELSE IF (CHOICE == 'N' .OR. CHOICE == 'n') THEN
        PRINT *, 'Exiting now...'
        STOP
      END IF
    END IF
    INC_DEC = 'done!'
  END FUNCTION INC_DEC

END MODULE DEC_INC_MOD


PROGRAM INCREMENT_DECREMENT
USE DEC_INC_MOD

IMPLICIT NONE

CHARACTER :: options, CHOICE
CHARACTER(LEN = 50) :: MSG

CHOICE = options()
MSG = INC_DEC(CHOICE)

END PROGRAM INCREMENT_DECREMENT
