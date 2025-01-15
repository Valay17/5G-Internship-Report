clc;
clear all;
close all;
 
Message1 = [1 1 0 1];
Message2 = [1 0 0 1];
 
xmod1 = 2*Message1-1;
xmod2 = 2*Message2-1;
 
a1 = 0.80; a2 = 0.20;
x = sqrt(a1)*xmod1 + sqrt(a2)*xmod2;
 
%Plot figures
 
ay = -2:0.2:2;
ax = ones(1,length(ay));
 
figure;
subplot(2,1,1)
stairs([Message1,Message1(end)],'linewidth',2);
ylim([-2 2])
grid on; hold on;
title('Given Data of User A (Message 1)')
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
title('Given Data of User B (Message 2)')
 
 
figure;
subplot(2,1,1)
stairs([xmod1,xmod1(end)],'linewidth',2);
ylim([-2 2])
grid on; hold on;
title('Modified Data of User A (Message 1)')
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
title('Modified Data of User B (Message 2)');
 
t1 = sqrt(a1)*xmod1;
t2 = sqrt(a2)*xmod2;
figure;
subplot(2,1,1)
stairs([t1,t1(end)],'linewidth',2);
ylim([-2 2])
grid on; hold on;
title('Ploted Data of User A after Scaling ($$\sqrt{a_1}Message 1$$)','Interpreter','latex','FontSize',14)
for u = 1:3
   plot(ax*(u+1),ay,':k','linewidth',2);  
end
subplot(2,1,2)
stairs([t2,t2(end)],'m','linewidth',2);
ylim([-2 2])
title('Ploted Data of User B after Scaling ($$\sqrt{a_2}Message 2$$)','Interpreter','latex','FontSize',14)
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

% x=your_value*ones(1,length_of_y);
% plot(x,y)