function WI_Using_CPCA_Feature( Num_of_Writers, Dataset )

% Num_of_Writers argument specify the number of scribes involved in the
% expirement on the dataset specified in the Dataset argument

if strcmp(Dataset,'IAM') 
 %% Loading IAM Dataset Samples
    load Training_IAM_Writers;
    IAM_Training_File = IAM_Train_Imgs_As_Mat;
    load Testing_IAM_Writers;
    IAM_Testing_File = IAM_Tst_Imgs_As_Mat;
    
 %% Initializing the CPCA feature parameters
 % Note that this feature is sensitive to a set of parameters and there may
 % exist a strong correlation among parameters, hence the achieved results are
 % subject to the parameters tunning step.
 % Note that the parameters of the feature are also sensitve to the dataset
 Clusters = 20; % this is the codebook size parameter
 Line_Seg = 9;   % this is the line sigment parameter (epsilon)
 Theta1_Intervals = 12 ; % this is the angular quantization parameter Na
 Theta2_Intervals = 12;  % this is the angular quantization parameter Na
 Phi_Intervals = 8;      % this is the PHI angular quantization parameter PHI
 NP = 35;                % this is the contour fragment length parameter NP
 Gap = 15;               % this is the GAP parameter
 
 %% Here is the invokation of the module that performs the writer identification the CPCA feature
 Curr_Performance_Rate = WI_System_Main_CPCA(IAM_Training_File, IAM_Testing_File,Num_of_Writers, Clusters, NP, Gap, Line_Seg, Theta1_Intervals, Theta2_Intervals, Phi_Intervals);
 % Top_1 Identification rate, Top_5 Identification rate and Top_10 Identification rate
 Top_1 = Curr_Performance_Rate(1);
 Top_5 = Curr_Performance_Rate(2);
 Top_10 = Curr_Performance_Rate(3);
 
 %% Here the results are written into an excel sheet for further analysis 
 CPCA_Results_on_IAM = [Num_of_Writers,Clusters,Top_1,Top_5,Top_10]; 
 filename = 'CPCA_Results_on_IAM.xls';
 Heading_Column_Names={'#Writers','#Clusters','Top1 %','Top5 %','Top10 %'};
 Heading_Column_Values= CPCA_Results_on_IAM; %[Num_of_Writers, Clusters, Top_1, Top_5, Top_10];
 sheet=1;
 xlRange='A2';
 xlswrite(filename,Heading_Column_Values,sheet,xlRange);
 sheet=1;
 xlRange='A1';
 xlswrite(filename,Heading_Column_Names,sheet,xlRange);
% winopen('CPCA_E_Clusters_Param_Results.xls'); 

else
    %% Loading KHATT Dataset Samples
    load Training_KHATT_Writers;
    KHATT_Training_File = KHATT_Train_Imgs_As_Mat;
    load Testing_KHATT_Writers;
    KHATT_Testing_File = KHATT_Tst_Imgs_As_Mat; 
    %% Initializing the CPCA feature parameters
 % Note that this feature is sensitive to a set of parameters and there may
 % exist a strong correlation among parameters, hence the achieved results are
 % subject to the parameters tunning step.
 % Note that the parameters of the feature are also sensitve to the dataset
 Clusters = 20; % this is the codebook size parameter
 Line_Seg = 9;   % this is the line sigment parameter (epsilon)
 Theta1_Intervals = 8 ; % this is the angular quantization parameter Na
 Theta2_Intervals = 8;  % this is the angular quantization parameter Na
 Phi_Intervals = 6;      % this is the PHI angular quantization parameter PHI
 NP = 45;                % this is the contour fragment length parameter NP
 Gap = 20;               % this is the GAP parameter
 
 %% Here is the invokation of the module that performs the writer identification the CPCA feature
 Curr_Performance_Rate = WI_System_Main_CPCA(KHATT_Training_File, KHATT_Testing_File,Num_of_Writers, Clusters, NP, Gap, Line_Seg, Theta1_Intervals, Theta2_Intervals, Phi_Intervals);
 % Top_1 Identification rate, Top_5 Identification rate and Top_10 Identification rate
 Top_1 = Curr_Performance_Rate(1);
 Top_5 = Curr_Performance_Rate(2);
 Top_10 = Curr_Performance_Rate(3);
 
 %% Here the results are written into an excel sheet for further analysis 
 CPCA_Results_on_KHATT = [Num_of_Writers,Clusters,Top_1,Top_5,Top_10]; 
 filename = 'CPCA_Results_on_KHATT.xls';
 Heading_Column_Names={'#Writers','#Clusters','Top1 %','Top5 %','Top10 %'};
 Heading_Column_Values= CPCA_Results_on_KHATT; %[Num_of_Writers, Clusters, Top_1, Top_5, Top_10];
 sheet=1;
 xlRange='A2';
 xlswrite(filename,Heading_Column_Values,sheet,xlRange);
 sheet=1;
 xlRange='A1';
 xlswrite(filename,Heading_Column_Names,sheet,xlRange);
% winopen('CPCA_E_Clusters_Param_Results.xls');     
end
        
   

end

