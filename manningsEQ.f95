! A program to calculate mannings equation
MODULE FLOWQTY
  IMPLICIT NONE
  CONTAINS

  REAL FUNCTION CALCFLOWQTY(K, N, HYDR, SLOPE, AREA)
    REAL :: AREA, QTYFLOW, VELOCITY, HYDR, SLOPE, N, K

    PRINT *, 'Assuming normal flow... '
    VELOCITY = (K/N) * HYDR**(2.0/3) * SLOPE**(1.0/2) 

    PRINT *, 'VELOCITY IS ', VELOCITY
    QTYFLOW = AREA * VELOCITY
    CALCFLOWQTY = QTYFLOW
  END FUNCTION CALCFLOWQTY

END MODULE FLOWQTY


PROGRAM MANNINGSEQ
USE FLOWQTY
IMPLICIT NONE

REAL :: AREA, HYDR, L, B, SLOPE, RESULT, K
REAL, PARAMETER :: N = 0.060
INTEGER :: CHOICE

PRINT *, 'Enter either 1 or 2 for the options below'
PRINT *, '1 => SI Unit - 1.0'
PRINT *, '2 => English Unit - 1.49'
READ *, CHOICE

IF(CHOICE == 1) THEN
  PRINT *, 'YOU CHOSE SI UNITS - 1.00'
  K = 1.0
ELSE IF(CHOICE == 2) THEN
  PRINT *, 'YOU CHOSE ENGLISH UNITS - 1.49'
  K = 1.49
ELSE
  PRINT *, 'YOU HAVE ENTERED AN INCORRECT OPTION '
  STOP
END IF

PRINT *, 'THE VALUE FOR K IS => ', K

PRINT *, 'Enter the dimensions for length and breadth simultaneously and press enter'
read *, L , B

PRINT *, 'The value for N ', N
PRINT *, 'The value for length ', L
PRINT *, 'The value for Breadth ', B
AREA = L * B
PRINT *, 'The COMPUTED Area equal => ', AREA
SLOPE = L/B
PRINT *, 'The COMPUTED Slope equal => ', SLOPE

HYDR = AREA / (L + 2 * B)
PRINT *, 'The COMPUTED HYDRAULIC RADIUS equal => ', HYDR

RESULT = CALCFLOWQTY(K, N, HYDR, SLOPE,  AREA)
PRINT *, 'The result is ', RESULT
END PROGRAM MANNINGSEQ
