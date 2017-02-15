function senal_fsk(g,f0,f1)

%modulacion FSK
%fskd([1 0 1 1 0 0 1 0 1 1 0 1 1 1 0 0 1 0 1],1,2)

t=0:2*pi/99:2*pi;
cp=[];
sp=[];
mod=[];
mod1=[];
bit=[];

for n=1:length(g);
    if g(n)==0;
        die=ones(1,100);
        c=sin(f0*t);
        se=zeros(1,100);
    else g(n)==1;
        die=ones(1,100);
        c=sin(f1*t);
        se=ones(1,100);
    end
    cp=[cp die];
    mod=[mod c];
    bit=[bit se];
end

ask =cp.*mod;

subplot(1,1,1);plot(ask,'LineWidth',1.5);grid on;
title('modulacion FSK ');
axis([0 100*length(g) -2.5 2.5]);
