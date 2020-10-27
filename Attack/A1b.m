clc
clear
audioPath = ".\Jammed\J1a\J1.wav";
savePath = ".\Recovered\J1a\A1b.wav";

b1 = fir1(512,2000/fsWrite*2,'high');

[rawdata, fs] = audioread(audioPath);
writedata = filter(b1,1,rawdata);
writedata = writedata/max(abs(writedata));
audiowrite(savePath,writedata,fs)