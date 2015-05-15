csvwrite('test.dat', ScopeData3.time);
csvwrite('test2.dat', ScopeData3.signals.values);

saveas(get_param('kalman','Handle'),'/data/model.eps');
saveas(get_param('kalman/Kalman filter','Handle'),'./data/model1.eps');
saveas(get_param('kalman/System of interest','Handle'),'./data/model2.eps');