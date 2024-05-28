q_g_step = 8e3; % increase the reactive power reference to 8 kVars
sim("converter.slx");
figures_2;
q_g_step = 4e3;