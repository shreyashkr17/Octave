%the Auto and Cross Corelation of the given Sequence
%A= [1 3 2 5]
%x = [1,2,3,5];
%subplot(2,1,1);
%stem(x);
%subplot(2,1,2);

%y = xcorr(x,x);
%xlabel('time index');
%ylabel('Amplitude');
%B = [3,-2,4,-3]
%x = [3,-2,4,-3]
%subplot(2,1,1);
%stem(x);
%subplot(2,1,2);
%y = xcorr(x,x);
%xlabel(' time index');
%ylabel('Amplitude');


A = [1 3 2 5];
B = [3 -2 4 -3];

% Linear combination
alpha = 2; % Corrected: Added the definition of alpha
beta = -1;
linear_combination = alpha * A + beta * B;

% Circular combination
shift_amount = 2; % Circular shift by 2 positions
circular_combination = circshift(A, shift_amount) + circshift(B, shift_amount);

% Display results
disp('Linear Combination:'); disp(linear_combination);
disp('Circular Combination:'); disp(circular_combination);


