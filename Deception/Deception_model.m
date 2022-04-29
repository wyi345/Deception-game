
% X0 = [0.5 0.5];%%receiver's strategy
% Y0 = [0.5 0.5];%%deceiver's strategy
% X1 = X0;%%initial value
% Y1 = Y0;
% X2 = X0;
% Y2= Y0;
% double Jr
% 
pi0 = 0.6;
pi1 = 0.4;
c = 0.8;
% C = 0.2;%%cost for lying P(M!=Sita|S = Sita)*P(Sita)
% 
% function [f] = funx(X)
% f =  1-(X(1)*(P0*Y(1)-P1*Y(2)) + X(2)*(P0*(1-Y(1))-P1*(1-Y(2)))+P1) ;
% end  
% 
% function Jd = Fun(X,Y)
% Jd = Y(1)*(X(1)*P0-X(2)*P0)+Y(2)*(X(2)*P1-X(1)*P1)+P1 + C*(1-P0*Y(1)-(1-Y(2))*P1);
% end

% function x = minFunx(X,Y)
% fun = Funx(X,Y);
% x = fmincon(Funx(X,Y),X0,[],[],[],[],[0 0],[1 1]);
% end 
% Xm = fmincon(Funx(X,Y1),X0,[],[],[],[],[0 0],[0 0]);
% function f = Funy(X2,Y2)
% end
%Funx =1-(X(1)*(P0*Y(1)-P1*Y(2)) + X(2)*(P0*(1-Y(1))-P1*(1-Y(2)))+P1) ;%%reveiver's cost P(wrong prediction)
%Funy = Y(1)*(X(1)*P0-X(2)*P0)+Y(2)*(X(2)*P1-X(1)*P1)+P1 + C*(1-P0*Y(1)-(1-Y(2))*P1);

% for n=1:5
%     X = fmincon(Funx,X0,[],[],[],[],[0 0],[0 0]);
%     Y = fmincon(Funy,Y0,[],[],[],[],[0 0],[0 0]);
% end 
%x = [0 0];%%gama00 gama11
%%x=Ind(gamma0,pi0,gamma1,pi1,theta)
% r = [0 0];%%gamma : strategy for deceiver r00 and r11


% x1 = Ind(r(1),pi0,1-r(2),pi1,0);
% x2 = Ind(r(1),pi0,1-r(2),pi1,1);
% x3 =Ind(1-r(1),pi0,r(2),pi1,0) ;
% x4 =Ind(1-r(1),pi0,r(2),pi1,1) ;
rv=zeros(1,10);
rv1 = zeros(1:10);

for n = 1:10
c = 0.2*n;
r = fmincon(@(r)  Ind(r(1),pi0,1-r(2),pi1,0)*r(1)*pi0+Ind(r(1),pi0,1-r(2),pi1,1)*(1-r(1))*pi1+Ind(1-r(1),pi0,r(2),pi1,0)*(1-r(2))*pi0+Ind(1-r(1),pi0,r(2),pi1,1)*r(2)*pi1+c*((1-r(1))*pi0+pi1*(1-r(2))),[0 0],[],[],[],[],[0 0],[1 1]);
rv(n) = r(1);
rv1(n) = r(2);
end 

m = 1:1:10;
plot(m,rv);

figure 
plot(m,rv1);







