PROGRAM squareRootOfNumbers
!**********************************************************
! Oluwole Israel O.                                       *
! 170591101                                               *
! This program prints the square of numbers from 1 to 5   *
! *********************************************************

INTEGER :: i
REAL :: sqrtNumber

PRINT *, 'Printing the square root of numbers from 1 to 5: '

!do loop starts here
DO i = 1, 5, 1
    sqrtNumber = i**0.5
    PRINT *, 'The square root of ', i, ' is ', sqrtNumber
END DO
END PROGRAM squareRootOfNumbers
