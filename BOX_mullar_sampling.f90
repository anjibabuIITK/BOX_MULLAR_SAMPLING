!BOX MULLAR SAMPLING
!A FORTRAN90 program to get normal disrtibution values .using BOX MULLAR SAMPLING method to convert uniform distribution to Normal distribution.
!
!Authour:    ANJI BABU KAPAKAYALA
!            IIT KANPUR, INDIA.
!
PROGRAM box_muller_sampling
    REAL*8 :: r, theta, x, y
    REAL*8, allocatable ::u1(:), u2(:)
    REAL, parameter :: pi=3.14159
    INTEGER, PARAMETER :: seed = 252
    INTEGER::i,N
    N = 10000
    OPEN(1, file = "DISTRIBUTION.dat",STATUS="NEW")
    ALLOCATE (u1(N))
    ALLOCATE (u2(N))
    CALL srand(seed)
   !Box mullar transform
       do i=1,N
          u1 = rand()
          u2 = rand()
          r=sqrt(-2*log(u1(i)))
          theta=2*pi*u2(i)

          x= r*cos(theta)  
          y= r*sin(theta)

!        WRITE(*,*) x,y
         WRITE(1,21),x
   21 FORMAT (F8.4)
       END DO
       CLOSE(1)
DEALLOCATE (u1)
DEALLOCATE (u2)
END PROGRAM box_muller_sampling
