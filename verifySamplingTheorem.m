function verifySamplingTheorem(fm,fs_factor)
    % Verify sampling theorem
    % fm: Maximum frequency of the signal
    % fs_factor: Sampling factor (multiple of the Nyquist rate)

    % Set the time duration for the signal
    t = 0:0.001:(1/fm)*10;

    % Generate the continuous-time signal (sine wave)
    signal = sin(2*pi*fm*t);

    % Nyquist rate
    fs_nyquist = 2 * fm;

    % Calculate the sampling rate based on the given factor
    fs = fs_nyquist * fs_factor;

    % Generate the time vector for the sampled signal
    t_sampled = 0:1/fs:(1/fm)*10;

    % Perform sampling
    sampled_signal = sin(2*pi*fm*t_sampled);

    % Plot the continuous and sampled signals
    figure;

    % Plot the continuous signal
    subplot(2, 1, 1);
    plot(t, signal);
    title('Continuous-time Signal');
    xlabel('Time');
    ylabel('Amplitude');

    % Plot the sampled signal
    subplot(2, 1, 2);
    stem(t_sampled, sampled_signal);
    title('Sampled Signal');
    xlabel('Time');
    ylabel('Amplitude');

    % Display sampling theorem conditions
    fprintf('Sampling Theorem Conditions:\n');
    fprintf('Maximum Frequency (fm): %d Hz\n', fm);
    fprintf('Nyquist Sampling Rate (2fm): %d Hz\n', fs_nyquist);
    fprintf('Actual Sampling Rate (fs): %d Hz\n', fs);
    fprintf('Condition: ');

    % Check the sampling condition
    if fs_factor > 2
        fprintf('Under Sampling (fs > 2fm) - Violation\n');
    elseif fs_factor == 2
        fprintf('Nyquist Sampling (fs = 2fm) - Satisfied\n');
    else
        fprintf('Over Sampling (fs < 2fm) - Satisfied\n');
    end
end

