% read reference solution
ref = csvread('reference/reference.csv');
ref_x = ref(:,4);
ref_x = ref_x(2:end,:);% delete useless 1st rows
ref_m = ref(:,1);
ref_m = ref_m(2:end,:);% delete useless 1st rows
ref_p = ref(:,3);
ref_p = ref_p(2:end,:); % delete useless 1st rows

%%%%%%%%%%%%%%%%%%%%%%%%%% ideal nitrogen
%%%%%%% hessian
% read hessian of density for ideal nitrogen
ideal_hessian_density = csvread('hessian/d.csv');
ideal_hessian_density_x = ideal_hessian_density(:,3);
ideal_hessian_density_x = ideal_hessian_density_x(2:end,:); 
ideal_hessian_density_m = ideal_hessian_density(:,1);
ideal_hessian_density_m = ideal_hessian_density_m(2:end,:); 
ideal_hessian_density_p = ideal_hessian_density(:,2);
ideal_hessian_density_p = ideal_hessian_density_p(2:end,:);

% read hessian of mach for ideal nitrogen
ideal_hessian_mach= csvread('hessian/m.csv');
ideal_hessian_mach_x = ideal_hessian_mach(:,3);
ideal_hessian_mach_x = ideal_hessian_mach_x(2:end,:); 
ideal_hessian_mach_m = ideal_hessian_mach(:,1);
ideal_hessian_mach_m = ideal_hessian_mach_m(2:end,:); 
ideal_hessian_mach_p = ideal_hessian_mach(:,2);
ideal_hessian_mach_p = ideal_hessian_mach_p(2:end,:);

% read hessian of p for ideal nitrogen
ideal_hessian_p= csvread('hessian/p.csv');
ideal_hessian_p_x = ideal_hessian_p(:,3);
ideal_hessian_p_x = ideal_hessian_p_x(2:end,:); 
ideal_hessian_p_m = ideal_hessian_p(:,1);
ideal_hessian_p_m = ideal_hessian_p_m(2:end,:); 
ideal_hessian_p_p = ideal_hessian_p(:,2);
ideal_hessian_p_p = ideal_hessian_p_p(2:end,:)/8;

% read hessian of T for ideal nitrogen
ideal_hessian_t= csvread('hessian/t.csv');
ideal_hessian_t_x = ideal_hessian_t(:,3);
ideal_hessian_t_x = ideal_hessian_t_x(2:end,:); 
ideal_hessian_t_m = ideal_hessian_t(:,1);
ideal_hessian_t_m = ideal_hessian_t_m(2:end,:); 
ideal_hessian_t_p = ideal_hessian_t(:,2);
ideal_hessian_t_p = ideal_hessian_t_p(2:end,:);




% plot comparison
figure(1)
plot(ref_x,ref_p,'k',"linewidth", 2);
hold on
grid on
plot(ideal_hessian_density_x, ideal_hessian_density_p,'r',"linewidth", 2);
hold on
grid on
plot(ideal_hessian_mach_x, ideal_hessian_mach_p,'b',"linewidth", 2);
hold on
grid on
plot(ideal_hessian_p_x, ideal_hessian_p_p,"linewidth", 2);
hold on
grid on
plot(ideal_hessian_t_x, ideal_hessian_t_p,'g', "linewidth", 2);
hold on
grid on
xlabel('X/D')
##ylabel('Mach number')
ylabel('P/Pt')
##title('Mach number along symmetry axis')
title('Pressure along symmetry axis')
legend('Reference solution','hessian (\rho)', 'hessian (M)', 'hessian (P)', 'hessian (T)')
legend boxoff
set(gca, "linewidth", 2, "fontsize", 14);
##saveas(figure(1), "P_ref_ideal_hessian");