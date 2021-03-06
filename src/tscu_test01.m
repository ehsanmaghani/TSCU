%% Time Series Classification Utility (TSCU) test suite.
% The test runs TSCU in default settings. 
% * Author : Huseyin Kaya
% * Website: <http://web.itu.edu.tr/huseyinkaya/tscu>
% * Sources: <https://github.com/hkayabilisim/TSCU>

%% Loading data
% The data set is TRACE which is
% available in the TSCU package. For more diverse dataset, please visit
% the UCR Time Series web site 
% (<http://www.cs.ucr.edu/~eamonn/time_series_data/>).
%trn=load('../data/TRACE_TMP_TRAIN');
%tst=load('../data/TRACE_TMP_TEST');

%trn=load('../../UCR/synthetic_control/synthetic_control_TRAIN');
%tst=load('../../UCR/synthetic_control/synthetic_control_TEST');
trn=load('../../UCR/Gun_Point/Gun_Point_TRAIN');
tst=load('../../UCR/Gun_Point/Gun_Point_TEST');

%% Running TSCU
% TSCU is run with its defaults options. It should run in couple
% of seconds since the alignment is set to 'None' by default. 
% It means standard good old friend Euclidean distance is used to 
% measure how two time series are close to each other. 
tscu(trn,tst,'Alignment','None');
%tscu(trn,tst,'Alignment','DTW');
%tscu(trn,tst,'Alignment','CDTW');
%tscu(trn,tst,'Alignment','SAGA','MATLABPool','64procs');
