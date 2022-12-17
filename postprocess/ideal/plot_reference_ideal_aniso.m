% read reference solution
ref = csvread('reference/reference.csv');
ref_x = ref(:,4);
ref_x = ref_x(2:end,:);% delete useless 1st rows
ref_m = ref(:,1);
ref_m = ref_m(2:end,:);% delete useless 1st rows
ref_p = ref(:,3);
ref_p = ref_p(2:end,:); % delete useless 1st rows

%%%%%%%%%%%%%%%%%%%%%%%%%% ideal nitrogen
%%%%%%% anisotropic
% read anisotropic of density for ideal nitrogen
ideal_aniso_density = csvread('anisotropic/d.csv');
ideal_aniso_density_x = ideal_aniso_density(:,3);
ideal_aniso_density_x = ideal_aniso_density_x(2:end,:); 
ideal_aniso_density_m = ideal_aniso_density(:,1);
ideal_aniso_density_m = ideal_aniso_density_m(2:end,:); 
ideal_aniso_density_p = ideal_aniso_density(:,2);
ideal_aniso_density_p = ideal_aniso_density_p(2:end,:);

% read anisotropic of mach for ideal nitrogen
ideal_aniso_mach= csvread('anisotropic/m.csv');
ideal_aniso_mach_x = ideal_aniso_mach(:,3);
ideal_aniso_mach_x = ideal_aniso_mach_x(2:end,:); 
ideal_aniso_mach_m = ideal_aniso_mach(:,1);
ideal_aniso_mach_m = ideal_aniso_mach_m(2:end,:); 
ideal_aniso_mach_p = ideal_aniso_mach(:,2);
ideal_aniso_mach_p = ideal_aniso_mach_p(2:end,:);

% read anisotropic of p for ideal nitrogen
ideal_aniso_p= csvread('anisotropic/p.csv');
ideal_aniso_p_x = ideal_aniso_p(:,3);
ideal_aniso_p_x = ideal_aniso_p_x(2:end,:); 
ideal_aniso_p_m = ideal_aniso_p(:,1);
ideal_aniso_p_m = ideal_aniso_p_m(2:end,:); 
ideal_aniso_p_p = ideal_aniso_p(:,2);
ideal_aniso_p_p = ideal_aniso_p_p(2:end,:);

% read anisotropic of T for ideal nitrogen
ideal_aniso_t= csvread('anisotropic/t.csv');
ideal_aniso_t_x = ideal_aniso_t(:,3);
ideal_aniso_t_x = ideal_aniso_t_x(2:end,:); 
ideal_aniso_t_m = ideal_aniso_t(:,1);
ideal_aniso_t_m = ideal_aniso_t_m(2:end,:); 
ideal_aniso_t_p = ideal_aniso_t(:,2);
ideal_aniso_t_p = ideal_aniso_t_p(2:end,:);




% plot comparison
figure(1)
plot(ref_x,ref_p,'k',"linewidth", 2);
hold on
grid on
plot(ideal_aniso_density_x, ideal_aniso_density_p,'r',"linewidth", 2);
hold on
grid on
plot(ideal_aniso_mach_x, ideal_aniso_mach_p,'b',"linewidth", 2);
hold on
grid on
plot(ideal_aniso_p_x, ideal_aniso_p_p,"linewidth", 2);
hold on
grid on
plot(ideal_aniso_t_x, ideal_aniso_t_p,'g', "linewidth", 2);
hold on
grid on
xlabel('X/D')
##ylabel('Mach number')
ylabel('P/Pt')
##title('Mach number along symmetry axis')
title('Pressure along symmetry axis')
legend('Reference solution','aniso (\rho)', 'aniso (M)', 'aniso (P)', 'aniso (T)')
legend boxoff
set(gca, "linewidth", 2, "fontsize", 14);
##saveas(figure(1), "P_ref_ideal_aniso");