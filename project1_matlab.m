%% Project 1 problem 2.65 b)
% x(n) = [1,1,1,1,1,-1,-1,1,1,-1,1,-1,1]; n = [0:12];
% v(n)= Random Gaussian sequence with zero mean and
% standard deviation sigma = .01
% y(n)= .9*x(n-20)+v(n)
k = [0:199];
x = [1,1,1,1,1,-1,-1,1,1,-1,1,-1,1]; n = [0:12];
x(13:200) = 0;

% plot x(n)
subplot(3,1,1)
stem(k,x);title('Barker Sequence');
xlabel('n');ylabel('x(n)');
axis([0,200,-1.2,1.2]);

% calculate y(n)
x = circshift(x,[0,20]);
sigma = .01;
v = sqrt(sigma).*rand(1,200);
y = .9.*x + v;

% plot y(n)
subplot(3,1,2)
plot(k,y);title('Received Signal')
xlabel('n');ylabel('y(n)');
axis([0,200,-1.2,1.2]);

%% Cross-correlation -- I was having some error here
% the SIGFOLD and CONV_M weren't being found
% even though they were in the project folder
% r = cross(x,h)
[y,k] = SIGFOLD(y,k); % obtain h(-n)
[r,nr] = CONV_M(x,n,y,k); % cross-correlation

% Plot Cross-correlation
subplot(3,1,3);stem(nr,r)
ylabel('r');title('Time-delay estimation');
xlabel('l');

%% Project 1 problem 2.65 b)
% x(n) = [-1,-1,-1,1,1,1,1,-1,1,-1,1,1,-1,-1,1]; n = [0:14];
% v(n)= Random Gaussian sequence with zero mean and
% standard deviation sigma = .01
% y(n)= .9*x(n-20)+v(n)
k = [0:199];
x = [-1,-1,-1,1,1,1,1,-1,1,-1,1,1,-1,-1,1]; n = [0:14];
x(15:200) = 0;

% plot x(n)
subplot(3,1,1)
stem(k,x);title('Four-stage Feedback');
xlabel('n');ylabel('x(n)');
axis([0,200,-1.2,1.2]);

% calculate y(n)
x = circshift(x,[0,20]);
sigma = .01;
v = sqrt(sigma).*rand(1,200);
y = .9.*x + v;

% plot x(n)
subplot(3,1,1)
stem(k,x);title('Four-stage Feedback');
xlabel('n');ylabel('x(n)');
axis([0,200,-1.2,1.2]);

% plot y(n)
subplot(3,1,2)
plot(k,y);title('Received Signal')
xlabel('n');ylabel('y(n)');
axis([0,200,-1.2,1.2]);

%% Cross-correlation -- I was having some error here
% the SIGFOLD and CONV_M weren't being found
% even though they were in the project folder
% r = cross(x,h)
[y,k] = SIGFOLD(y,k); % obtain h(-n)
[r,nr] = CONV_M(x,n,y,k); % cross-correlation

% Plot Cross-correlation
subplot(3,1,3);stem(nr,r)
ylabel('r');title('Time-delay estimation');
xlabel('l');