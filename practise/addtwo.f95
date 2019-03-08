program addtwo

real :: cake, hunt, a, b, c
real, PARAMETER :: ikind=selected_real_kind(10)
integer :: fill, d, e, f
character :: mess*14
logical :: wait

mess = 'input a number'
wait = .false.

a = 6.7
b = 4.2
c = a - b
d = 5
e = 9
f = 100

cake = a/c
hunt = e + f/d
fill = hunt/cake

print *, cake, hunt, fill
print *, mess, wait
h = 10/1.222
print *, h

end program addtwo
