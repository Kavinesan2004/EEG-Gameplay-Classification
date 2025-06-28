function plot_eeg_time_series(csv_file, duration_sec, sampling_rate)
    % Read the CSV file
    data = readtable(csv_file);

    % Determine the number of samples to plot based on the desired duration
    samples_to_plot = duration_sec * sampling_rate;

    % Truncate or pad the data to match the desired number of samples
    if height(data) > samples_to_plot
        data = data(1:samples_to_plot, :);  % Truncate
    elseif height(data) < samples_to_plot
        % Pad with zeros if not enough samples
        padding = zeros(samples_to_plot - height(data), width(data));
        data = [data; array2table(padding)];
    end

    % Plot each channel
    time_axis = (0:samples_to_plot - 1) / sampling_rate;  % Time axis in seconds

    figure;
    hold on;
    for i = 1:width(data)
        plot(time_axis, data{:, i});
    end
    hold off;

    title('EEG Signal Over Time');
    xlabel('Time (s)');
    ylabel('Amplitude (\muV)');
    legend(data.Properties.VariableNames, 'Location', 'best');
end
