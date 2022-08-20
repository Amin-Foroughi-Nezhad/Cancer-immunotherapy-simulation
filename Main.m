%%
%==========================================================================
%==========================================================================
%
%           Feedback linearization control and its application
%                     to MIMO cancer immunotherapy
%
%==========================================================================
%==========================================================================
clc;
clear all;
close all;
sim('CancerImmunology.mdl');
figure (1)
subplot(3,1,1);plot(t*1000,x1,'b','linewidth',2);grid on;ylabel('x_{1}(t)');
subplot(3,1,2);plot(t*1000,x2,'b','linewidth',2);grid on;ylabel('x_{2}(t)');
subplot(3,1,3);plot(t*1000,x3,'b','linewidth',2);grid on;ylabel('x_{3}(t)');
xlabel('t[day]');
