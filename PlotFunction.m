%Function1: y = (a+b)^2-(a-b)^2
%a = 2;
%b = 3;
%x = linspace(-10,10,100)
%y1 = (a+b)^2-(a-b)^2;
%subplot(3,2,1);
%plot(x,y1);
%title('(a+b)^2-(a-b)^2');

%Function2: y = y = sin(x)
%y2 = sin(x)
%subplot(3,2,2)
%plot(x,y2);
%title('Sin(x)');


% Function 3: y = unit ramp function
%y3 = max(0, x);

%subplot(3, 2, 3);
%plot(x, y3);
%title('Unit Ramp Function');


% Function 4: y = e^x
%y4 = exp(x);

%subplot(3, 2, 4);
%plot(x, y4);
%title('e^x');

% Function 5: unit step function
%y5 = ones(size(x));
%y5(x < 0) = 0;

%subplot(3, 2, 5);
%plot(x, y5);
%title('Unit Step Function');


% Function 6: unit impulse function
%y6 = zeros(size(x));
%y6(x == 0) = 1;

%subplot(3, 2, 6);
%stem(x, y6);
%title('Unit Impulse Function');
