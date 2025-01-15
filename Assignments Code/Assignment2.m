% CDMA DSSS

%Transmitter
clc
PNBit_Stream = round(rand(1,32));
Input_Signal = [0 1 0 1 1 0 1 1];
PNBit_Stream;
j = 1;
for i = 1:1:8
    if j<32
for k = j:1:j+3
    a(k) = xor(PNBit_Stream(k), Input_Signal(i));
end
j = j+4;
    end
end

%Receiver
l = length(a);
for i=1:1:l
    b(i) = xor(PNBit_Stream(i),a(i));
end

j = 1;
for k = 1:1:8
    if j<32
        c(k) = b(j);
        j = j+4;
    end
end

figure(1)
stem(PNBit_Stream)
title('PNBit Stream')

figure(2)
stem(Input_Signal)
title('Input Stream')

figure(3)
stem(a)
title('DSSS - Signal used for Transmission, Signal after XOR')

figure(4)
stem(b)
title('Converting 8 bit to 32 bit Data')

figure(5)
stem(c)
title('Received Data')