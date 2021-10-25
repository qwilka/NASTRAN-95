      SUBROUTINE NASTIM (IHR, IMN, ISC, CPUSEC)
      REAL ARRAY(2)
CDME  https://github.com/AeroDME/NASTRAN-95/blob/master/mds/nastim.f
CDME  Changed to conform to GFORTRAN implementation of ETIME subroutine.
      REAL TIME
      CALL ETIME(ARRAY,TIME)
CDME  CALL ETIME(ARRAY)
      SECS   = ARRAY(2)
      IHR    = SECS / 3600.  
      IMN    = ( SECS - 3600.*IHR ) / 60.
      ISC    = SECS - ( 3600.*IHR ) - ( 60.*IMN )
      CPUSEC = SECS
      RETURN
      END
