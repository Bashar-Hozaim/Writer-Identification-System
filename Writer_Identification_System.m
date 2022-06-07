
%% Offline text-independent writer identification using a codebook with structural features
% Here is the main module of the system

%% Specifying the number of scribes involved in the expirement
% note that number of writers in IAM dataset is 650
% note that number of writers in KHATT dataset is 1000
Num_of_Writers = 10; % here for example we start the code execution by 100 writers  
%% parameters values should be tunned before running the system
% all parameters can be tunned in "WI_Using_CPCA_Feature.mat" procedure

 WI_Using_CPCA_Feature( Num_of_Writers,'IAM' );
 WI_Using_CPCA_Feature( Num_of_Writers,'KHATT' );

%% parameters tunning for theCONtour point CONcavity/CONvexity feature is done usin this procedure
% determining the target dataset is done by the user in the code of 
% WR_Using_CON2_Feature_NEW procedure by enabling the required code block

WI_Using_CON3_Feature( Num_of_Writers ,'IAM' );
WI_Using_CON3_Feature( Num_of_Writers ,'KHATT' );

%%
% WR_Using_Cur_Feature_NEW( Num_of_Writers );