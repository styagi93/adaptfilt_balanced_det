clc; clear all; close all;
clockFreq = 5000000;
sClk = daq.createSession('ni');
ch1 = addCounterOutputChannel(sClk,'Dev1',0,'PulseGeneration')
ch1.Frequency = clockFreq
clkTerminal = ch1.Terminal;
sClk.IsContinuous = true;
%% 
s = daq.createSession('ni');
s.Rate = clockFreq;
s.DurationInSeconds = .01;
addDigitalChannel(s,'Dev1','Port0/Line0','InputOnly');
addDigitalChannel(s,'Dev1','Port0/Line1','InputOnly');
addDigitalChannel(s,'Dev1','Port0/Line2','InputOnly');
addDigitalChannel(s,'Dev1','Port0/Line3','InputOnly');
addDigitalChannel(s,'Dev1','Port0/Line4','InputOnly');
addDigitalChannel(s,'Dev1','Port0/Line5','InputOnly');
addDigitalChannel(s,'Dev1','Port0/Line6','InputOnly');
addDigitalChannel(s,'Dev1','Port0/Line7','InputOnly');
addClockConnection(s,'External',['Dev1/' clkTerminal],'ScanClock');
startBackground(sClk);
% while (1)
dataIn = startForeground(s);
% 
% for i= 1: size(dataIn,1)
%     if (~dataIn(i,1))   
%         temp = 0;
%         if (dataIn(i,8))   
%             temp = temp +1 ; 
%         end
%         if (dataIn(i,7))   
%             temp = temp +2 ; 
%         end
%         if (dataIn(i,6))   
%             temp = temp +4 ; 
%         end
%         if (dataIn(i,5))   
%             temp = temp +8 ; 
%         end
%         if (dataIn(i,4))   
%             temp = temp +16 ; 
%         end
%         if (dataIn(i,3))   
%             temp = temp +32 ; 
%         end
%         if (dataIn(i,2))   
%             temp = temp +64 ; 
%         end
%     else
%         temp = 0;
%         if (~dataIn(i,8))   
%             temp = temp -1 ; 
%         end
%         if (~dataIn(i,7))   
%             temp = temp -2 ; 
%         end
%         if (~dataIn(i,6))   
%             temp = temp -4 ; 
%         end
%         if (~dataIn(i,5))   
%             temp = temp -8 ; 
%         end
%         if (~dataIn(i,4))   
%             temp = temp -16 ; 
%         end
%         if (~dataIn(i,3))   
%             temp = temp -32 ; 
%         end
%         if (~dataIn(i,2))   
%             temp = temp -64 ; 
%         end
%         temp = temp -1;
%     end
%     ourData(i,:) = temp;
% end
%  plot(ourData); drawnow;
%  end