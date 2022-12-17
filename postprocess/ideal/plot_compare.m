% read paper solution
ref = csvread('paper/CFD_P.csv');
ref_x = ref(:,1);
ref_p = ref(:,2);

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



% plot comparison
figure(1)
plot(ref_x,ref_p,'k',"linewidth", 2);
hold on
grid on
plot(ideal_aniso_density_x, ideal_aniso_density_p,'r',"linewidth", 2);
hold on
grid on
grid on
xlabel('X/D')
##ylabel('Mach number')
ylabel('P/Pt')
##title('Mach number along symmetry axis')
title('Pressure along symmetry axis')
legend('Guardone 2007','aniso (\rho)')
legend boxoff
set(gca, "linewidth", 2, "fontsize", 14);
axis ([-4 10 0 1])
##saveas(figure(1), "P_ref_ideal_aniso");