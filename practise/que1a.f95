! X = T**3.0 - 8.0*T + 4.0
! Y = SIN(T) + COS(2.0 * T)
! Z = E**(3.0*T + 5.0)


PROGRAM QUE1A
  IMPLICIT NONE

  REAL :: T, X, Y, Z, EXE, WHAI, ZED

  PRINT *, 'Enter the value for T => '
  READ *, T 

  PRINT *, 'The value entered for T is => ', T

  X = EXE(T)
  Y = WHAI(T)
  Z = ZED(T)

  PRINT *, 'THE VALUE FOR X => ', X
  PRINT *, 'THE VALUE FOR Y => ', Y
  PRINT *, 'THE VALUE FOR Z => ', Z
  PRINT *, 'THE VALUE FOR T.X.Y.Z => ', T * X * Y * Z

END PROGRAM QUE1A

REAL FUNCTION EXE(T)
  REAL :: ANSWER, T

  PRINT *, T * T * T
  PRINT *, 8.0 * T
  PRINT *, ((8.0 * T) + 4.0)
  PRINT *, 'FINAL => ', (T * T * T) - ((8.0 * T) + 4.0)

  ANSWER = (T * T * T) - ((8.0 * T) + 4.0)
  PRINT *, 'ANSWER FOR X => ', ANSWER

  EXE = ANSWER
END FUNCTION EXE

REAL FUNCTION WHAI(T)
  REAL :: T
  REAL, PARAMETER :: PI = 3.1415926535897
  ! REAL :: 
  
  ! CONVERT T FROM DEGREES TO RADIANS

  PRINT *, 'SIN(T) IN RADIANS => ', SIN(T * PI/180)
  PRINT *, 'COS(T * 2.0) IN RADIANS => ', COS((T * 2.0) * PI/180)
  
  WHAI = SIN(T * PI/180) + COS((T * 2.0) * PI/180)
END FUNCTION WHAI

REAL FUNCTION ZED(T)

  REAL :: T, ANSWER

  ANSWER = EXP((3.0 * T) + 5.0)

  ZED = ANSWER
END FUNCTION ZED

! SUBROUTINE D_R_CONV(N, CONV)
!   REAL :: TBC, CONV

!   CONV = TBC * (3.1415/180)

! END SUBROUTINE RAD_DEG_CONVTBC
