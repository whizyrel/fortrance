! program begins
PROGRAM celsiusFahrenheitConverter
!*************************************************************************
! Oluwole Israel O.
! Conputer Science
! Faculty of Science                                                     *
! 170591101                                                              *
! This program converts any given celcius value to fahrenheit equivalent *
! ************************************************************************

! declare variable and variable type
REAL :: CelsiusVal, FahrenheitVal

! some dummy text to the screen
PRINT *, 'This program converts a given celsius value to a fahrenheit equivalent'

! more dummy text to the screen
PRINT *, 'Enter the value to be converted to FahrenheitValahrenheit'

! read in values from the keyboard
READ *, CelsiusVal

! calculate fahrenheit equivalent from the standard equation for conversion of celsius to fahrenheit and store in respective variable
FahrenheitVal = (CelsiusVal * (9.0/5.0)) + 32.0

! print result to screen
PRINT *, 'The equivalent Fahrenheit Value is ', FahrenheitVal

! program ends
END PROGRAM celsiusFahrenheitConverter
