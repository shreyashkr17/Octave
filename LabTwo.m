function [z_value, P_value] = evaluateExpressions(x, y)
    % Evaluate expressions
    z_value = x^2 + y^2;
    P_value = x^2 + y^2 + z_value^2;
end

% Example usage
x_value = 3;
y_value = 4;

[z_result, P_result] = evaluateExpressions(x_value, y_value);

fprintf('For x = %d and y = %d:\n', x_value, y_value);
fprintf('z = %d\n', z_result);
fprintf('P = %d\n', P_result);

