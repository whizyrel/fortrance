PROGRAM discriminantOfAQuadratic
!*************************************************************************
! Oluwole Israel O.                                                      *
! 170591101                                                              *
! This program prnts the root of a discriminant of a quadratic equation  *
! equation = sqrt(b^2)- (4ac))                                           *
!                                                                        *
!*************************************************************************

REAL :: a, b, c, discriminant, result

PRINT *, 'Enter the value for a: '
READ *, a

PRINT *, 'Enter the value for b: '
READ *, b

PRINT *, 'Enter the value for c: '
READ *, c

PRINT *, 'The value for a is: ', a
PRINT *, 'The value for b is: ', b
PRINT *, 'The value for c is: ', c

discriminant = (b**2) - (4 * a * c)

PRINT *, 'The discriminant is: ', discriminant
result = (discriminant) ** 0.5

PRINT *, 'Root of the discriminant is: ', result

END PROGRAM discriminantOfAQuadratic