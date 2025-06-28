function generate_scalogram(signal, channel_name, output_path, Fs, max_frequency)
    % Perform Continuous Wavelet Transform (CWT)
    [coefficients, frequencies] = cwt(signal, 'amor', Fs);  % 'amor' is the analytic Morlet wavelet

    % Filter frequencies to only include values up to max_frequency
    valid_freq_indices = frequencies <= max_frequency;
    filtered_frequencies = frequencies(valid_freq_indices);
    filtered_coefficients = coefficients(valid_freq_indices, :);

    % Plot the scalogram
    figure;
    surf(1:length(signal), filtered_frequencies, abs(filtered_coefficients), 'EdgeColor', 'none');
    axis tight;
    view(0, 90);  % Set view to 2D
    colormap(jet);
    colorbar;
    title(['Scalogram - ', channel_name]);
    xlabel('Time (samples)');
    ylabel('Frequency (Hz)');

    % Save the scalogram image
    output_file = fullfile(output_path, ['scalogram_', channel_name, '.png']);
    saveas(gcf, output_file);
    close(gcf);  % Close figure after saving
    disp(['Scalogram saved for ', channel_name, ' at ', output_file]);
end
