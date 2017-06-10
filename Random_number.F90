program random_number
!To write the random numbers in given range
real*8 :: r 
integer, parameter :: seed = 122

open(1, file = "random_numbers")
call srand(seed)
do i = 1,1000
  r = rand()*2.0D0-1.0D0    !scaling the random numbers between -1 to +1
  write(*,*)r
  write(1,*),r
end do
close(1)
end program random_number
