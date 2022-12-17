% read reference solution
ref = csvread('reference/reference.csv');
ref_x = ref(:,4);
ref_x = ref_x(2:end,:);% delete useless 1st rows
ref_m = ref(:,1);
ref_m = ref_m(2:end,:);% delete useless 1st rows
ref_p = ref(:,3);
ref_p = ref_p(2:end,:); % delete useless 1st rows

%%%%%%%%%%%%%%%%%%%%%%%%%% nonideal nitrogen
%%%%%%% aniso
% read aniso of density for nonideal nitrogen
nonideal_aniso_density = csvread('aniso/density.csv');
nonideal_aniso_density_x = nonideal_aniso_density(:,4);
nonideal_aniso_density_x = nonideal_aniso_density_x(2:end,:); 
nonideal_aniso_density_m = nonideal_aniso_density(:,1);
nonideal_aniso_density_m = nonideal_aniso_density_m(2:end,:); 
nonideal_aniso_density_p = nonideal_aniso_density(:,3);
nonideal_aniso_density_p = nonideal_aniso_density_p(2:end,:);

% read aniso of mach for nonideal nitrogen
nonideal_aniso_mach= csvread('aniso/mach.csv');
nonideal_aniso_mach_x = nonideal_aniso_mach(:,4);
nonideal_aniso_mach_x = nonideal_aniso_mach_x(2:end,:); 
nonideal_aniso_mach_m = nonideal_aniso_mach(:,1);
nonideal_aniso_mach_m = nonideal_aniso_mach_m(2:end,:); 
nonideal_aniso_mach_p = nonideal_aniso_mach(:,3);
nonideal_aniso_mach_p = nonideal_aniso_mach_p(2:end,:);

% read aniso of p for nonideal nitrogen
nonideal_aniso_p= csvread('aniso/p.csv');
nonideal_aniso_p_x = nonideal_aniso_p(:,4);
nonideal_aniso_p_x = nonideal_aniso_p_x(2:end,:); 
nonideal_aniso_p_m = nonideal_aniso_p(:,1);
nonideal_aniso_p_m = nonideal_aniso_p_m(2:end,:); 
nonideal_aniso_p_p = nonideal_aniso_p(:,3);
nonideal_aniso_p_p = nonideal_aniso_p_p(2:end,:);

% read aniso of T for nonideal nitrogen
nonideal_aniso_t= csvread('aniso/t.csv');
nonideal_aniso_t_x = nonideal_aniso_t(:,4);
nonideal_aniso_t_x = nonideal_aniso_t_x(2:end,:); 
nonideal_aniso_t_m = nonideal_aniso_t(:,1);
nonideal_aniso_t_m = nonideal_aniso_t_m(2:end,:); 
nonideal_aniso_t_p = nonideal_aniso_t(:,3);
nonideal_aniso_t_p = nonideal_aniso_t_p(2:end,:);




% plot comparison
figure(1)
plot(ref_x,ref_p,'k',"linewidth", 2);
hold on
grid on
plot(nonideal_aniso_density_x, nonideal_aniso_density_p,'r',"linewidth", 2);
hold on
grid on
plot(nonideal_aniso_mach_x, nonideal_aniso_mach_p,'b',"linewidth", 2);
hold on
grid on
plot(nonideal_aniso_p_x, nonideal_aniso_p_p,"linewidth", 2);
hold on
grid on
plot(nonideal_aniso_t_x, nonideal_aniso_t_p,'g', "linewidth", 2);
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
##saveas(figure(1), "P_ref_nonideal_aniso");