%ECE Project 1
classdef ECE2312_Project1
    properties
        recObj = audiorecorder;
    end

    properties(Constant)
        %Recording Length (Seconds)
        recDuration = 5;
    end


    methods
        %Inisilizing Class name to varaible self
        function self = ECE2312_Project1
        end

        %Records and plots sounds graphs
        function Record_Sample(self)
            
            disp("Begin speaking.")
            recordblocking(self.recObj, self.recDuration);
            disp("End of recording.")   
            
            %Graph
            L = getaudiodata(self.recObj).';

            delay_1ms = round(self.recObj.SampleRate*0.001);
            delay_10ms = round(self.recObj.SampleRate*0.01);
            delay_100ms = round(self.recObj.SampleRate*0.1);
            
            %initital delay using average calculated
            initialDelay= 17.618; %team average samples.
            R=[zeros(1,round(initialDelay)),L]; %right side
            
            %write copies but delayed- by 1ms
            a_delayed_1ms= [zeros(1,delay_1ms),R];
            audiowrite('The quick brown fox jumps over the lazy dog-delayed 1ms.wav',a_delayed_1ms,self.recObj.SampleRate);
            % by 10ms
            a_delayed_10ms =[zeros(1,delay_10ms),R];
            audiowrite('The quick brown fox jumps over the lazy dog-delayed 10ms.wav',a_delayed_10ms,self.recObj.SampleRate);
            % by 100ms
            a_delayed_100ms =[zeros(1,delay_100ms),R];
            audiowrite('The quick brown fox jumps over the lazy dog-delayed 100ms.wav',a_delayed_100ms,self.recObj.SampleRate);
           % disp('Recorded audio data:');
           % disp(a);
           % attenuation original file 
            attenuated_audio_1 = L .*10^(-1.5/20);
            audiowrite('The quick brown fox jumps over the lazy dog-attenuated-original1.5dB.wav', attenuated_audio_1, self.recObj.SampleRate);
            %-3dB
            attenuated_audio_2 = L .* 10^(-3/20);
            audiowrite('The quick brown fox jumps over the lazy dog-attenuated-original3dB.wav', attenuated_audio_2, self.recObj.SampleRate);
            %-6dB
            attenuated_audio_3 = L .* 10^(-6/20);
            audiowrite('The quick brown fox jumps over the lazy dog-attenuated-original6dB.wav', attenuated_audio_3, self.recObj.SampleRate);
            
            % attenuation average head file 
            attenuated_audio_4 = R .*10^(-1.5/20);
            audiowrite('The quick brown fox jumps over the lazy dog-attenuated-average1.5dB.wav', attenuated_audio_4, self.recObj.SampleRate);
            %-3dB
            attenuated_audio_5 = R .* 10^(-3/20);
            audiowrite('The quick brown fox jumps over the lazy dog-attenuated-average3dB.wav', attenuated_audio_5, self.recObj.SampleRate);
            %-6dB
            attenuated_audio_6 = R .* 10^(-6/20);
            audiowrite('The quick brown fox jumps over the lazy dog-attenuated-average6dB.wav', attenuated_audio_6, self.recObj.SampleRate);

            figure;
            plot(L)
            title('Waveform')
            ylabel('Amplitude')
            xlabel('Time')
            
            audiowrite('The quick brown fox jumps over the lazy dog-original.wav',L,self.recObj.SampleRate);
               
          
            %plot spectogram
            figure;
            spectrogram(L, hamming(256), 128, 256, self.recObj.SampleRate, 'yaxis');
            ylim([0 8])
            colormap('jet'); % Change colormap
            colorbar('off'); % Turn off colorbar
            title('Spectrogram');
            xlabel('Time (seconds)');
            ylabel('Frequency (Hz)');
        end
    end
end

  
