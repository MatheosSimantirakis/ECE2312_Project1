function PlayRecordings
        %original file
        [a,fs] = audioread("The quick brown fox jumps over the lazy dog-original.wav");
        %read delayed files
        a_delayed_1ms = audioread("The quick brown fox jumps over the lazy dog-delayed 1ms.wav");
        a_delayed_10ms = audioread("The quick brown fox jumps over the lazy dog-delayed 10ms.wav");
        a_delayed_100ms = audioread("The quick brown fox jumps over the lazy dog-delayed 100ms.wav");
        %read attenuated files
        a_attenuate_1dB= audioread('The quick brown fox jumps over the lazy dog-attenuated-1.5dB.wav');
        a_attenuated_3dB= audioread('The quick brown fox jumps over the lazy dog-attenuated-3dB.wav');
        a_attenuated6_dB= audioread("The quick brown fox jumps over the lazy dog-attenuated-6dB.wav");
       
        recDuration = 5;
        
        %first playing the original sound
        disp('Original audio playing');
        sound(a,fs);
        pause(recDuration);
        
        %first playing the original sound
        disp('1ms delayed audio playing');
        sound(a_delayed_1ms,fs);
        pause(recDuration);
        
        %first playing the original sound
        disp('10ms delayed audio playing');
        sound(a_delayed_10ms,fs);
        pause(recDuration);
        
        %first playing the original sound
        disp('100ms delayed audio playing');
        sound(a_delayed_100ms,fs);
        pause(recDuration);
       
        %play attenuated sound -1.5dB
        disp('-1.5dB attenuated audio playing');
        sound(a_attenuate_1dB,fs);
        pause(recDuration);
        
        %-3dB
        disp('-3dB attenuated audio playing');
        sound(a_attenuated_3dB,fs);
        pause(recDuration);
        
        %-6dB
        disp('-6dB attenuated audio playing');
        sound(a_attenuated6_dB,fs);
        pause(recDuration);

        disp('play back over');

end