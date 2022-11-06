% start - cut from frequency [kHz]
% start - cut to frequency [kHz]
% v - input vector

function [v] = cutFreq(v, start, stop)
v(int64(start*10^3):int64(stop*10^3),1) = zeros(int64((stop-start)*10^3)+1,1);
end
