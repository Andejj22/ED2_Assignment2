figure;
%% Grid voltages
subplot(3,2,1);
plot(u_g_abc.time,u_g_abc.data(:,1),'r','LineWidth',1); hold on; grid on;
plot(u_g_abc.time,u_g_abc.data(:,2),'g','LineWidth',1);
plot(u_g_abc.time,u_g_abc.data(:,3),'b','LineWidth',1);
legend('u_{ga}','u_{gb}','u_{gc}','location','east');
ylabel('Grid Voltage (V)');
ylim([-400 400]);
%% Power
subplot(3,2,2);
plot(i_c.time,1E-3*3/2*real(i_c.data).*abs_u_g.data,'b','LineWidth',1); hold on; grid on;
plot(i_c.time,1E-3*-3/2*imag(i_c.data).*abs_u_g.data,'r','LineWidth',1);
plot(i_c.time,1E-3*p_g_ref.data,'b');
plot(i_c.time,1E-3*q_g_ref.data,'r');
legend('p_g','q_g','p_{g,ref}','q_{g,ref}','Location','southeast');
ylabel('Power (kW)');
ylim([-2 6]);
%% Converter Current
subplot(3,2,3);
plot(i_c_abc.time,i_c_abc.data(:,1),'r','LineWidth',1); hold on; grid on;
plot(i_c_abc.time,i_c_abc.data(:,2),'g','LineWidth',1);
plot(i_c_abc.time,i_c_abc.data(:,3),'b','LineWidth',1);
legend('i_{ca}','i_{cb}','i_{cc}','location','east');
ylabel('Converter Current (A)');
ylim([-15 15]);
subplot(3,2,4);
plot(i_c.time,real(i_c.data),'b','LineWidth',1); hold on; grid on;
plot(i_c.time,imag(i_c.data),'r','LineWidth',1);
plot(i_c.time,real(i_c_ref.data),'b');
plot(i_c.time,imag(i_c_ref.data),'r');
legend('i_{cd}','i_{cq}','i_{cd,ref}','i_{cq,ref}','location','east');
ylabel('Converter Current (A)');
ylim([-15 15]);
%% Angle
subplot(3,2,5);
plot(theta_ge.time,180/pi*theta_ge.data,'b','LineWidth',1);hold on; grid on;
plot(u_gs.time,180/pi*angle(u_gs.data),'r','LineWidth',1);
legend('$$\vartheta_g$$','$$\hat{\vartheta_g}$$','Interpreter','Latex');
ylabel('Angle (deg)');
%% Converter voltage
subplot(3,2,6);
plot(u_c_ref_lim.time,abs(u_c_ref_lim.data),'b','LineWidth',1); hold on; grid on;
yline(u_dc.data(1,1)/sqrt(3),'--r');
yline(2/3*u_dc.data(1,1),':r');
legend('$$u_c$$','$$u_{dc}/\sqrt{3}$$','$$(2/3)u_{dc}$$','Interpreter','Latex');
ylabel('Converter Voltage (V)');
ylim([300 450]);

