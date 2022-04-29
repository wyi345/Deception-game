function x=Ind(gamma0,pi0,gamma1,pi1,theta)
global m 
  if gamma0*pi0>gamma1*pi1%%calculate the best response for the receiver
      m = 0;
  else 
      m = 1;
  end 
  if m == theta
      x = 1;
  else 
      x = 0;
  end 

end
