data_l_2_i_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','intervalrow','decision tree');
data_l_2_p_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','period','glm');

data_l_s_i_d=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','intervalrow','decision tree');
data_l_s_p_g=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','period','glm');


data_l_2_i_k=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','2interaction','intervalrow','kmeans');

dataS1=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','intervalrow','decision tree');
dataS2=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','period','glm');
dataS3=pipe('03_Mar_201519-21_','18_Mar_201518-21_','linear','simple','intervalrow','kmeans');


eData1=pipe('M_03_C','M_18','linear','2interaction','intervalrow','decision tree');
eData2=pipe('M_03_C','M_18','linear','2interaction','period','glm');
eData3=pipe('M_03_C','M_18','linear','2interaction','intervalrow','kmeans');