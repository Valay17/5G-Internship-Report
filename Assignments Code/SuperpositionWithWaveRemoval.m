clc; 
clear all; 
close all;
 
Message1 = [1 1 0 0];
Message2 = [1 0 0 1];
 
xmod1 = 2*Message1-1;
xmod2 = 2*Message2-1;
 
a1 = 0.80; a2 = 0.20;
x = sqrt(a1)*xmod1 + sqrt(a2)*xmod2;
 
xdec1 = ones(1,length(Message1));
xdec1(x<0)=-1;
 
xrem = x - sqrt(a1)*xdec1;
xdec2 = zeros(1,length(Message1));
xdec1(x<0)=0;
xdec2(xrem>0)=1;
 
%Plot figures
 
ay = -2:0.2:2;
ax = ones(1,length(ay));
 
figure;
subplot(2,1,1)
stairs([Message1,Message1(end)],'linewidth',2);
ylim([-2 2])
grid on; hold on;
title('Given Data of User A (Message1)')
for u = 1:3
   plot(ax*(u+1),ay,':k','linewidth',2);  
end
subplot(2,1,2)
stairs([Message2,Message2(end)],'m','linewidth',2);
ylim([-2 2])
grid on; hold on;
for u = 1:3
   plot(ax*(u+1),ay,':k','linewidth',2);  
end
title('Given Data of User B (Message2)')
 
 
figure;
subplot(2,1,1)
stairs([xmod1,xmod1(end)],'linewidth',2);
ylim([-2 2])
grid on; hold on;
title('Modified Data of User A (Message1)')
for u = 1:3
   plot(ax*(u+1),ay,':k','linewidth',2);  
end
subplot(2,1,2)
stairs([xmod2,xmod2(end)],'m','linewidth',2);
ylim([-2 2])
grid on; hold on;
for u = 1:3
   plot(ax*(u+1),ay,':k','linewidth',2);  
end
title('Modified Data of User B (Message2)');
 
t1 = sqrt(a1)*xmod1;
t2 = sqrt(a2)*xmod2;
figure;
subplot(2,1,1)
stairs([t1,t1(end)],'linewidth',2);
ylim([-2 2])
grid on; hold on;
title('Scaled Data of User A ($$\sqrt{a_1}Message1$$)','Interpreter','latex','FontSize',14)
for u = 1:3
   plot(ax*(u+1),ay,':k','linewidth',2);  
end
subplot(2,1,2)
stairs([t2,t2(end)],'m','linewidth',2);
ylim([-2 2])
title('Scaled Data of User B ($$\sqrt{a_2}Message2$$)','Interpreter','latex','FontSize',13)
grid on; hold on;
 
for u = 1:3
   plot(ax*(u+1),ay,':k','linewidth',2);  
end
 
figure;
stairs([x,x(end)],'r','linewidth',2);
grid on; hold on;
for u = 1:3
   plot(ax*(u+1),ay,':k','linewidth',2);  
end
title('Superposition Coded Signal')
plot(1:5,zeros(1,5),'k','linewidth',1.5)
 
figure;
stairs([xrem,xrem(end)],'r','linewidth',2);
grid on; hold on;
for u = 1:3
   plot(ax*(u+1),ay,':k','linewidth',2);  
end
title('Remaining Signal of Superposition Coded Signal')
plot(1:5,zeros(1,5),'k','linewidth',1.5)