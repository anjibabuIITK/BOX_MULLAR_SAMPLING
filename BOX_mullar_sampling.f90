!BOX MULLAR SAMPLING
PROGRAM box_muller_sampling
    real*8 :: r, theta, x, y
    real*8, allocatable ::u1(:), u2(:)
    real, parameter :: pi=3.14159
    integer, parameter :: seed = 252
    integer::i,N
    N = 10000
    open(1, file = "box_mullar_random_number")
    allocate (u1(N))
    allocate (u2(N))
    call srand(seed)

   !Box mullar transform

       do i=1,N
          u1 = rand()
          u2 = rand()
          r=sqrt(-2*log(u1(i)))
          theta=2*pi*u2(i)

          x= r*cos(theta)  
          y= r*sin(theta)

!        write(*,*) x,y
         write(1,*),x
       end do
       close(1)
deallocate (u1)
deallocate (u2)
end program box_muller_sampling
