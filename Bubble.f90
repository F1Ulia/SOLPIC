!  FortranFirstProject.f90 
!
!  FUNCTIONS:
!  FortranFirstProject - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: FortranFirstProject
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************


program new_year
implicit none

integer, parameter:: a_size = 10
integer:: a(a_size)
integer:: i , j, k, t
real:: n

call RANDOM_SEED

do i = 1, a_size
    call RANDOM_NUMBER(n)
    a(i) = nint(n*10)
end do
write(*,*), a

j =1
do while (j<(a_size-1))
    k = 1
    do while (k<(a_size))
         if (a(k)>a(k+1)) then
            t = a(k)
            a(k) = a(k+1)
            a(k+1) = t
         end if
         k=k+1
    end do
    j=j+1
end do

write(*,*),'Sorting', a

end program new_year
