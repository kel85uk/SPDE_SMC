X = dlmread('X.dat','',2,0);
Y = dlmread('Y.dat','',2,0);
sol_var = dlmread('sol_var.dat','',2,0);
sol_var = sqrt(sol_var);
sol_mean = dlmread('sol_mean.dat','',2,0);
f = dlmread('f.dat','',2,0);
rho_var = dlmread('rho_var.dat','',2,0);
rho_var = sqrt(rho_var);
rho_mean = dlmread('rho_mean.dat','',2,0);
X = reshape(X,sqrt(length(X)),[]);
Y = reshape(Y,sqrt(length(Y)),[]);
sol_var = reshape(sol_var,sqrt(length(sol_var)),[]);
sol_mean = reshape(sol_mean,sqrt(length(sol_mean)),[]);
f = reshape(f,sqrt(length(f)),[]);
rho_var = reshape(rho_var,sqrt(length(rho_var)),[]);
rho_mean = reshape(rho_mean,sqrt(length(rho_mean)),[]);

N = [10;25;50;200;500;1000];
Ninterp = linspace(10,1000,10000);
varvar = [103744;127280;82926.6;79215.2;78458.3;73479.7];
meanmean = [-227.595;-216.574;-211.519;-210.875;-211.891;-212.954];
varvarint = interp1(N,varvar,Ninterp,'cubic');
meanmeanint = interp1(N,meanmean,Ninterp,'cubic');

figure(10);
subplot(2,1,1)
plot(N,varvar,'ok',Ninterp,varvarint,'-k');
xlabel('N');ylabel('||Var(X)||_2');
subplot(2,1,2)
plot(N,meanmean,'*k',Ninterp,meanmeanint,'-k');
xlabel('N');ylabel('E[E[X|(x,y)]]');

figure(1);
surf(X,Y,sol_mean);
shading interp;
view([0 90]);
title('Sol_{mean}');

figure(2);
surf(X,Y,sol_var);
shading interp;
view([0 90]);
title('Sol_{\sigma}');

figure(3);
surf(X,Y,f);
shading interp;
view([0 90]);
title('f');

figure(4);
surf(X,Y,rho_mean);
shading interp;
view([0 90]);
title('rho_{mean}');

figure(5);
surf(X,Y,rho_var);
shading interp;
view([0 90]);
title('rho_{\sigma}');
