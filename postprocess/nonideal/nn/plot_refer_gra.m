% read reference solution
ref = csvread('reference/reference.csv');
ref_x = ref(:,4);
ref_x = ref_x(2:end,:);% delete useless 1st rows
ref_m = ref(:,1);
ref_m = ref_m(2:end,:);% delete useless 1st rows
ref_p = ref(:,3);
ref_p = ref_p(2:end,:); % delete useless 1st rows

%%%%%%%%%%%%%%%%%%%%%%%%%% nonideal nitrogen
%%%%%%% gradient
% read gradient of density for nonideal nitrogen
nonideal_gra_density = csvread('gradient/density.csv');
nonideal_gra_density_x = nonideal_gra_density(:,4);
nonideal_gra_density_x = nonideal_gra_density_x(2:end,:); 
nonideal_gra_density_m = nonideal_gra_density(:,1);
nonideal_gra_density_m = nonideal_gra_density_m(2:end,:); 
nonideal_gra_density_p = nonideal_gra_density(:,3);
nonideal_gra_density_p = nonideal_gra_density_p(2:end,:);

% read gradient of mach for nonideal nitrogen
nonideal_gra_mach= csvread('gradient/mach.csv');
nonideal_gra_mach_x = nonideal_gra_mach(:,4);
nonideal_gra_mach_x = nonideal_gra_mach_x(2:end,:); 
nonideal_gra_mach_m = nonideal_gra_mach(:,1);
nonideal_gra_mach_m = nonideal_gra_mach_m(2:end,:); 
nonideal_gra_mach_p = nonideal_gra_mach(:,3);
nonideal_gra_mach_p = nonideal_gra_mach_p(2:end,:);

% read gradient of p for nonideal nitrogen
nonideal_gra_p= csvread('gradient/p.csv');
nonideal_gra_p_x = nonideal_gra_p(:,4);
nonideal_gra_p_x = nonideal_gra_p_x(2:end,:); 
nonideal_gra_p_m = nonideal_gra_p(:,1);
nonideal_gra_p_m = nonideal_gra_p_m(2:end,:); 
nonideal_gra_p_p = nonideal_gra_p(:,3);
nonideal_gra_p_p = nonideal_gra_p_p(2:end,:);

% read gradient of T for nonideal nitrogen
nonideal_gra_t= csvread('gradient/t.csv');
nonideal_gra_t_x = nonideal_gra_t(:,4);
nonideal_gra_t_x = nonideal_gra_t_x(2:end,:); 
nonideal_gra_t_m = nonideal_gra_t(:,1);
nonideal_gra_t_m = nonideal_gra_t_m(2:end,:); 
nonideal_gra_t_p = nonideal_gra_t(:,3);
nonideal_gra_t_p = nonideal_gra_t_p(2:end,:);




% plot comparison
figure(1)
plot(ref_x,ref_p,'k',"linewidth", 2);
hold on
grid on
plot(nonideal_gra_density_x, nonideal_gra_density_p,'r',"linewidth", 2);
hold on
grid on
plot(nonideal_gra_mach_x, nonideal_gra_mach_p,'b',"linewidth", 2);
hold on
grid on
plot(nonideal_gra_p_x, nonideal_gra_p_p,"linewidth", 2);
hold on
grid on
plot(nonideal_gra_t_x, nonideal_gra_t_p,'g', "linewidth", 2);
hold on
grid on
xlabel('X/D')
##ylabel('Mach number')
ylabel('P/Pt')
##title('Mach number along symmetry axis')
title('Pressure along symmetry axis')
legend('Reference solution','Grad (\rho)', 'Grad (M)', 'Grad (P)', 'Grad (T)')
legend boxoff
set(gca, "linewidth", 2, "fontsize", 14);
##saveas(figure(1), "P_ref_nonideal_gra");