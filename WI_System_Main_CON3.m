function Performance_Rate = WI_System_Main_CON3( Training_File, Testing_File,Num_of_Writers, Clusters, Curve_Fragment, Gap_Val, Line_Seg, Theta1_Intervals, Theta2_Intervals, Prep_Dist_Interval, Line_Dist_Interval )
 
% here we are going to calculate the features of the training data set.
 Training_data = [];   
 Training_data = Generate_CON3_Feature(Training_File,Num_of_Writers,Curve_Fragment, Gap_Val, Line_Seg, Theta1_Intervals, Theta2_Intervals, Prep_Dist_Interval, Line_Dist_Interval);
 Training_data(isnan(Training_data)) = 0;
 save Training_data_sheet Training_data;
%% Here is the code book construction process

k= Clusters;
c1=clock;
x = size(Training_data);
[IDX,C] = kmeans(Training_data(:,1:x(2)-1),k) ;
clock-c1;
center=C;
save('center','center');

%%  here we are going to calculate the features of the training data set.
Testing_data = [];
Testing_data = Generate_CON3_Feature(Testing_File,Num_of_Writers,Curve_Fragment, Gap_Val, Line_Seg, Theta1_Intervals, Theta2_Intervals, Prep_Dist_Interval, Line_Dist_Interval);
Testing_data(isnan(Testing_data)) = 0;
save Testing_data_sheet Testing_data;
%% Calculating the training codes occurrence histogram

Train_Occurance_Histogram = Calculate_Occurrence_Histogram(Num_of_Writers,Training_data );
x= sum(Train_Occurance_Histogram);
sum_of_x= sum(x(1:k));
Train_Occurance_Histogram(:,1:k)= Train_Occurance_Histogram(:,1:k)/sum_of_x;
save('Train_Occurance_Histogram', 'Train_Occurance_Histogram');

%% Calculating the testing codes occurrence histogram
Test_Occurance_Histogram = Calculate_Occurrence_Histogram(Num_of_Writers,Testing_data );
x= sum(Test_Occurance_Histogram);
sum_of_x= sum(x(1:k));
Test_Occurance_Histogram(:,1:k)= Test_Occurance_Histogram(:,1:k)/sum_of_x;
save('Test_Occurance_Histogram', 'Test_Occurance_Histogram');
%% Callculating the similarity between the training and testing histograms
 Writers_Similarity_Matrix = {};
 Writers_Similarity_Matrix = Calculate_Matrices_Similarities(Test_Occurance_Histogram,Train_Occurance_Histogram);
 save Similarity_matrix Writers_Similarity_Matrix; 
 %% System performance 
  % Here are the performance metrics of the system 
  Top1_Performance = Calculate_Performance( Writers_Similarity_Matrix, 1);
  Top5_Performance = Calculate_Performance( Writers_Similarity_Matrix, 5);
  Top10_Performance = Calculate_Performance( Writers_Similarity_Matrix, 10);
  Performance_Rate = [Top1_Performance Top5_Performance Top10_Performance];
end 
