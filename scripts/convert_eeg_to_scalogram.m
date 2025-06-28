function convert_eeg_to_scalogram(csv_file, output_path, duration_sec, max_frequency)
    % Main function to convert EEG data to scalograms
    % Read the CSV file with preserved variable names
    data = readtable(csv_file, 'VariableNamingRule', 'preserve');

    % Create output directory if it doesn't exist
    if ~exist(output_path, 'dir')
        mkdir(output_path);
    end

    % Sampling frequency (adjust this based on your EEG system's specs)
    Fs = 256;  % Common EEG sampling frequency

    % Number of samples for the desired duration
    num_samples = duration_sec * Fs;

    % Generate scalograms for each channel
    for i = 1:width(data)
        channel_name = data.Properties.VariableNames{i};  % Get channel name
        signal = data{1:min(num_samples, height(data)), i};  % Extract first 300 sec or full signal
        generate_scalogram(signal, channel_name, output_path, Fs, max_frequency);  % Call helper function
    end
end
