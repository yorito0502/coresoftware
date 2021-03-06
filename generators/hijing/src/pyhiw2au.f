    
C***********************************************************************    
    
      FUNCTION PYHIW2AU(EPS,IREIM)    
    
C...Calculates real and imaginary parts of the auxiliary function W2;   
C...see R. K. Ellis, I. Hinchliffe, M. Soldate and J. J. van der Bij,   
C...FERMILAB-Pub-87/100-T, LBL-23504, June, 1987    
      COMMON/LUDAT1/MSTU(200),PARU(200),MSTJ(200),PARJ(200) 
      SAVE /LUDAT1/ 
    
      ASINH(X)=LOG(X+SQRT(X**2+1.)) 
      ACOSH(X)=LOG(X+SQRT(X**2-1.)) 
    
      IF(EPS.LT.0.) THEN    
        W2RE=4.*(ASINH(SQRT(-1./EPS)))**2   
        W2IM=0. 
      ELSEIF(EPS.LT.1.) THEN    
        W2RE=4.*(ACOSH(SQRT(1./EPS)))**2-PARU(1)**2 
        W2IM=-4.*PARU(1)*ACOSH(SQRT(1./EPS))    
      ELSE  
        W2RE=-4.*(ASIN(SQRT(1./EPS)))**2    
        W2IM=0. 
      ENDIF 
    
      IF(IREIM.EQ.1) PYHIW2AU=W2RE    
      IF(IREIM.EQ.2) PYHIW2AU=W2IM    
    
      RETURN    
      END   
