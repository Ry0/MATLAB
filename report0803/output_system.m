saveas(get_param('adaptive_control','Handle'),'./model_fig/model.eps');
saveas(get_param('adaptive_control/理想モデル','Handle'),'./model_fig/model1.eps');
saveas(get_param('adaptive_control/入力 u(t)','Handle'),'./model_fig/model2.eps');
saveas(get_param('adaptive_control/制御対象','Handle'),'./model_fig/model3.eps');
saveas(get_param('adaptive_control/r_d(t) = 4 + 0.5sin 5t + cos 3t + sin 0.5t','Handle'),'./model_fig/model4.eps');
saveas(get_param('adaptive_control/入力 u(t)/alpha_hat','Handle'),'./model_fig/model5.eps');
saveas(get_param('adaptive_control/入力 u(t)/beta_hat','Handle'),'./model_fig/model6.eps');
saveas(get_param('adaptive_control/入力 u(t)/gamma_hat','Handle'),'./model_fig/model7.eps');
saveas(get_param('adaptive_control/入力 u(t)/Delta','Handle'),'./model_fig/model7.eps');