PROGRAM tempConverter
!************************************************
! Oluwole Israel O.                             *
! 170591101                                     *
! This program converts celcius to fahrenheit   *
! ***********************************************

REAL :: C, F
PRINT *, 'Enter the value for Celcius: '
READ *, C

F = ((9 * C)/5) + 32

PRINT *, 'The corresponding Fahrenheit value is ', F
END PROGRAM tempConverter