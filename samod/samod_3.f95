! Awobajo Samod Omotoyosi
! Computer Science

PROGRAM solveQuadratic

real :: a, b, c, result

print *, 'Enter the value for a: '
read *, a

print *, 'Enter the value for b: '
read *, b

print *, 'Enter the value for c: '
read *, c

result = ((b**2) - (4 * a * c))**(1.0/2.0)
print *, 'The result of square root of b^2 - 4ac is: ', result
end program 