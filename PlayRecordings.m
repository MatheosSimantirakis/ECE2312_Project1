function PlayRecordings
        %original file
        [a,fs] = audioread("The quick brown fox jumps over the lazy dog-original.wav");
        %read delayed files
        a_delayed_1ms = audioread("The quick brown fox jumps over the lazy dog-delayed 1ms.wav");
        a_delayed_10ms = audioread("The quick brown fox jumps over the lazy dog-delayed 10ms.wav");
        a_delayed_100ms = audioread("The quick brown fox jumps over the lazy dog-delayed 100ms.wav");
        %read original attenuated files
        a_attenuate_1_1dB= audioread('The quick brown fox jumps over the lazy dog-attenuated-original1.5dB.wav');
        a_attenuated_1_3dB= audioread('The quick brown fox jumps over the lazy dog-attenuated-original3dB.wav');
        a_attenuated_1_6_dB= audioread("The quick brown fox jumps over the lazy dog-attenuated-original6dB.wav");
        
        %read average attenuated files
        a_attenuate_2_1dB= audioread('The quick brown fox jumps over the lazy dog-attenuated-average1.5dB.wav');
        a_attenuated_2_3dB= audioread('The quick brown fox jumps over the lazy dog-attenuated-average3dB.wav');
        a_attenuated_2_6_dB= audioread("The quick brown fox jumps over the lazy dog-attenuated-average6dB.wav");




       
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
       
        %play original attenuated sound -1.5dB
        disp('Original-1.5dB attenuated audio playing');
        sound(a_attenuate_1_1dB,fs);
        pause(recDuration);
        
        %-3dB
        disp('Original-3dB attenuated audio playing');
        sound( a_attenuated_1_3dB,fs);
        pause(recDuration);
        
        %-6dB
        disp('Original-6dB attenuated audio playing');
        sound(a_attenuated_1_6_dB,fs);
        pause(recDuration);

         %play averageattenuated sound -1.5dB
        disp(' Average-1.5dB attenuated audio playing');
        sound(a_attenuate_2_1dB,fs);
        pause(recDuration);
        
        %-3dB
        disp('Average-3dB attenuated audio playing');
        sound( a_attenuated_2_3dB,fs);
        pause(recDuration);
        
        %-6dB
        disp('Average-6dB attenuated audio playing');
        sound(a_attenuated_2_6_dB,fs);
        pause(recDuration);

        disp('play back over');

end