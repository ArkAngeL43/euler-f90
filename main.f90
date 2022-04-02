! made a module its better
!
!
!.. DO NOT use subroutines if you require arguments in the functions
!.. sub routines do not and can not use function arguments
!.. this program represents e 
!.. any time you add a function make sure you add it in the contains
!.. and call it dfrom the program main
!.. E syntax -> COMPLEX, REAL, Y, KND, func result = CDEXP(value)
! 
module euler

! specify implicits
implicit none 
    !CMPLX(X,[Y,KIND]) returns a complex number where X is converted to the real component. If Y is present it is converted to the imaginary component. If Y is not present then the imaginary component is set to 0.0. If X is complex then Y must not be present.
    COMPLEX(8) :: x = 0.03037666*1.6605402E-27

! Module contains
contains
        ! function called as real
        real function ex(func)
            ! func defined as complex, note: you must define the functions arguments data structure
            COMPLEX(8) :: func
            ! Using the CDEXP instead of EXP, EXP is for fortran77 or earlier, fortran95 uses CDEXP since its easier and is safer and more modern
            func = CDEXP(x)
            ! func = 
        end function ex
        ! end function
! end module
end module euler



program main 
! import module
    use euler
    ! write the functions output
    write(*,*) ex(x)
end program main
