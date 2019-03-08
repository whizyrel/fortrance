! Awobajo Samod Omotoyosi
! Computer Science

program FahrenheitConverter
! Program to convert celcius to fahrenheit

real :: Celcius, Fahr
print *, 'Enter the Celcius Value to Convert: '
read *, Celcius

Fahr = ((9.0/5.0) * Celcius) + 32.0

print *, 'The value in Fahrenheit: ', Fahr
end program