clc
clear
audioPath = ".\JammedAudio.wav";
savePath = ".\WBSF.wav";

[rawdata, fs] = audioread(audioPath);
b1 = fir1(512,2000/fs*2,'high');
writedata = filter(b1,1,rawdata);
audiowrite(savePath,writedata,fs)