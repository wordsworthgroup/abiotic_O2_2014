%% plot_results.m
% produce T-p profiles from iterated kcm1d.e for N2-CO2-H2O mixtures
% reproduces Fig. 3 of Wordsworth & Pierrehumbert (2014), ApJ.

close all
clear all

load results.mat

for ii=1:3
    
    if(ii==1)
        style = 'k';
    elseif(ii==2)
        style = 'k--';
    else
        style = 'k:';
    end
    
    figure(1)
    subplot(2,1,1)
    semilogy(T(:,ii),p(:,ii),style); hold on
    scatter(Tsurf(ii),psurf(ii),'kx')
    
    subplot(2,1,2)
    loglog(f(:,ii),p(:,ii),style); hold on
        
end

figure(1)
subplot(2,1,1)
axis ij
xlabel('T [K]')
ylabel('p [bar]')

subplot(2,1,2)
axis ij
xlabel('f_{H_2O} [mol/mol]')
ylabel('p [bar]')
