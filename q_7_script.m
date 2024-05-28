ind = find(p_g_ref.Time >= 0.05, 1,"first"); % Find the first index when system is in steady-state
p_g_ss = p_g_ref.Data(ind,1);
q_g_ss = q_g_ref.Data(ind,1);
i_cd_ss = 2*p_g_ss/(3*u_gN)
i_cq_ss = -2*q_g_ss/(3*u_gN)

u_cd_ss = u_gN-w_g*L_f*i_cq_ss
u_cq_ss = 1i*w_g*L_f*i_cd_ss

u_c_ss = sqrt(u_cd_ss^2+u_cq_ss^2);
