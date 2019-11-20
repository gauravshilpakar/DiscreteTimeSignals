clc; 

Omega = linspace(-2*pi,2*pi,500);
H = tf ( [1 0], [1 -0.5],-1);
H_Omega =  squeeze(freqresp (H,Omega)); 

x=Omega;
y_amp=abs(H_Omega);
y_freq=(angle(H_Omega));
subplot (2,1,1); 

%Plot of Amplitude Response
%Calculating max and min values of amplitude response
indexof_maxfreq= find(max(y_amp)==y_amp);
x_maxamp= x(indexof_maxfreq)
y_maxamp= y_amp(indexof_maxfreq)

indexof_minamp = find(min(y_amp)==y_amp);
x_minamp= x(indexof_minamp)
y_minamp= y_amp(indexof_minamp)

hold on;
plot(x,y_amp,'k');
plot(x_maxamp,y_maxamp,'o');
plot(x_minamp,y_minamp,'o');


yticks(0:1:9);
xticks(-2*pi:pi:2*pi);
xticklabels({'-2pi','-pi','0','pi','2*pi'});

xlabel ('\Omega'); 
ylabel('|H[e^{j \Omega}]|'); 
subplot (2,1,2); 

%Plot of Frequency Response
%Calculating max and min values of freq response

indexof_maxfreq= find(max(y_freq)==y_freq);
x_maxfreq= x(indexof_maxfreq)
y_maxfreq= y_freq(indexof_maxfreq)

indexof_minfreq = find(min(y_freq)==y_freq);
x_minfreq= x(indexof_minfreq)
y_minfreq= y_freq(indexof_minfreq)

hold on;
plot (x, y_freq, 'k');
plot(x_maxfreq,y_maxfreq,'o');
plot(x_minfreq,y_minfreq,'o');
plot(0,0,'o');

xlabel ('\Omega');
ylabel ('\angle H[e^{j \Omega}] [deg]');

xticks(-2*pi:pi/2:2*pi);
xticks(-2*pi:pi:2*pi);
xticklabels({'-2pi','-pi','0','pi','2*pi'});

