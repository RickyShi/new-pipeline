% Supervised Learning
data_l_s_p_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','period','decision tree');
data_l_s_p_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','period','glm');
data_l_s_p_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','period','randomforest');

data_l_s_ir_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','intervalrow','decision tree');
data_l_s_ir_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','intervalrow','glm');
data_l_s_ir_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','intervalrow','randomforest');

data_l_s_i_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','interval','decision tree');
data_l_s_i_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','interval','glm');
data_l_s_i_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','interval','randomforest');

data_l_2_p_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','period','decision tree');
data_l_2_p_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','period','glm');
data_l_2_p_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','period','randomforest');

data_l_2_ir_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','intervalrow','decision tree');
data_l_2_ir_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','intervalrow','glm');
data_l_2_ir_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','intervalrow','randomforest');

data_l_2_i_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','interval','decision tree');
data_l_2_i_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','interval','glm');
data_l_2_i_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','interval','randomforest');

data_l_3_p_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','3interaction','period','decision tree');
data_l_3_p_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','3interaction','period','glm');
data_l_3_p_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','3interaction','period','randomforest');

data_l_3_ir_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','3interaction','intervalrow','decision tree');
data_l_3_ir_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','3interaction','intervalrow','glm');
data_l_3_ir_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','3interaction','intervalrow','randomforest');

data_l_3_i_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','3interaction','interval','decision tree');
data_l_3_i_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','3interaction','interval','glm');
data_l_3_i_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','3interaction','interval','randomforest');

data_s_s_p_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','simple','period','decision tree');
data_s_s_p_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','simple','period','glm');
data_s_s_p_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','simple','period','randomforest');

data_s_s_ir_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','simple','intervalrow','decision tree');
data_s_s_ir_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','simple','intervalrow','glm');
data_s_s_ir_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','simple','intervalrow','randomforest');

data_s_s_i_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','simple','interval','decision tree');
data_s_s_i_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','simple','interval','glm');
data_s_s_i_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','simple','interval','randomforest');

data_s_2_p_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','2interaction','period','decision tree');
data_s_2_p_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','2interaction','period','glm');
data_s_2_p_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','2interaction','period','randomforest');

data_s_2_ir_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','2interaction','intervalrow','decision tree');
data_s_2_ir_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','2interaction','intervalrow','glm');
data_s_2_ir_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','2interaction','intervalrow','randomforest');

data_s_2_i_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','2interaction','interval','decision tree');
data_s_2_i_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','2interaction','interval','glm');
data_s_2_i_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','2interaction','interval','randomforest');

data_s_3_p_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','3interaction','period','decision tree');
data_s_3_p_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','3interaction','period','glm');
data_s_3_p_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','3interaction','period','randomforest');

data_s_3_ir_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','3interaction','intervalrow','decision tree');
data_s_3_ir_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','3interaction','intervalrow','glm');
data_s_3_ir_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','3interaction','intervalrow','randomforest');

data_s_3_i_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','3interaction','interval','decision tree');
data_s_3_i_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','3interaction','interval','glm');
data_s_3_i_r=pipe('03_Mar_201519-21_','18_Mar_201518-21_','spline','3interaction','interval','randomforest');

% Unsupervised Learning
%data_l_2_i_k=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','intervalrow','kmeans');

%eData1=pipe('M_03_C','M_18','linear','2interaction','intervalrow','decision tree');
%eData2=pipe('M_03_C','M_18','linear','2interaction','period','glm');
%eData3=pipe('M_03_C','M_18','linear','2interaction','intervalrow','kmeans');