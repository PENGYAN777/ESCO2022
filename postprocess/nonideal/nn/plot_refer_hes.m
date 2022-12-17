% read reference solution
ref = csvread('reference/reference.csv');
ref_x = ref(:,4);
ref_x = ref_x(2:end,:);% delete useless 1st rows
ref_m = ref(:,1);
ref_m = ref_m(2:end,:);% delete useless 1st rows
ref_p = ref(:,3);
ref_p = ref_p(2:end,:); % delete useless 1st rows

%%%%%%%%%%%%%%%%%%%%%%%%%% nonideal nitrogen
%%%%%%% hessian
% read hessian of density for nonideal nitrogen
nonideal_hes_density = csvread('hessian/density.csv');
nonideal_hes_density_x = nonideal_hes_density(:,4);
nonideal_hes_density_x = nonideal_hes_density_x(2:end,:); 
nonideal_hes_density_m = nonideal_hes_density(:,1);
nonideal_hes_density_m = nonideal_hes_density_m(2:end,:); 
nonideal_hes_density_p = nonideal_hes_density(:,3);
nonideal_hes_density_p = nonideal_hes_density_p(2:end,:);

% read hessian of mach for nonideal nitrogen
nonideal_hes_mach= csvread('hessian/mach.csv');
nonideal_hes_mach_x = nonideal_hes_mach(:,4);
nonideal_hes_mach_x = nonideal_hes_mach_x(2:end,:); 
nonideal_hes_mach_m = nonideal_hes_mach(:,1);
nonideal_hes_mach_m = nonideal_hes_mach_m(2:end,:); 
nonideal_hes_mach_p = nonideal_hes_mach(:,3);
nonideal_hes_mach_p = nonideal_hes_mach_p(2:end,:);

% read hessian of p for nonideal nitrogen
nonideal_hes_p= csvread('hessian/p.csv');
nonideal_hes_p_x = nonideal_hes_p(:,4);
nonideal_hes_p_x = nonideal_hes_p_x(2:end,:); 
nonideal_hes_p_m = nonideal_hes_p(:,1);
nonideal_hes_p_m = nonideal_hes_p_m(2:end,:); 
nonideal_hes_p_p = nonideal_hes_p(:,3);
nonideal_hes_p_p = nonideal_hes_p_p(2:end,:);

% read hessian of T for nonideal nitrogen
nonideal_hes_t= csvread('hessian/t.csv');
nonideal_hes_t_x = nonideal_hes_t(:,4);
nonideal_hes_t_x = nonideal_hes_t_x(2:end,:); 
nonideal_hes_t_m = nonideal_hes_t(:,1);
nonideal_hes_t_m = nonideal_hes_t_m(2:end,:); 
nonideal_hes_t_p = nonideal_hes_t(:,3);
nonideal_hes_t_p = nonideal_hes_t_p(2:end,:);




% plot comparison
figure(1)
plot(ref_x,ref_p,'k',"linewidth", 2);
hold on
grid on
plot(nonideal_hes_density_x, nonideal_hes_density_p,'r',"linewidth", 2);
hold on
grid on
plot(nonideal_hes_mach_x, nonideal_hes_mach_p,'b',"linewidth", 2);
hold on
grid on
plot(nonideal_hes_p_x, nonideal_hes_p_p,"linewidth", 2);
hold on
grid on
plot(nonideal_hes_t_x, nonideal_hes_t_p,'g', "linewidth", 2);
hold on
grid on
xlabel('X/D')
##ylabel('Mach number')
ylabel('P/Pt')
##title('Mach number along symmetry axis')
title('Pressure along symmetry axis')
legend('Reference solution','hes (\rho)', 'hes (M)', 'hes (P)', 'hes (T)')
legend boxoff
set(gca, "linewidth", 2, "fontsize", 14);
##saveas(figure(1), "P_ref_nonideal_hes");