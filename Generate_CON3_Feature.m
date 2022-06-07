 function TD = Generate_CON3_Feature(Data_File,Num_of_Writers, Curve_Fragment, Gap_Val, Line_Seg, Theta1_Intervals, Theta2_Intervals,Prep_Dist_Interval, Line_Dist_Interval )
  Whole_Data_File_Size = size(Data_File,2);% rows are considered as writers,Columns are images 
  Trn_or_Tst_Data = [];
  Contour_Points_Curvatures = [];
  Conn_Comp_Seg_Codes = [];
for folders_counter=1 : Num_of_Writers%length(list_of_folders)
  for img_num=1 : Whole_Data_File_Size
    % Here is the calculation of contour points angles feature
    I = Data_File{folders_counter,img_num};
    if length(I) == 0
        break
    else
    %% Here is the calculation of contour points curvatures feature
    B = bwboundaries(I);    
    boundary = B{1}; 
    Contour_Points_Curvatures = Calculate_Concavity_Convexity(boundary, Line_Seg);
    Conn_Comp_Seg_Codes = Contour_Curve_Segmentation_CON2_NEW(Contour_Points_Curvatures,Curve_Fragment,Gap_Val, Prep_Dist_Interval, Line_Dist_Interval, Theta1_Intervals, Theta2_Intervals, folders_counter);
    
    %% Here is the preparation of the features
    Trn_or_Tst_Data = [ Trn_or_Tst_Data; Conn_Comp_Seg_Codes ];
    Conn_Comp_Seg_Codes = [];
    Contour_Points_Curvatures = [];
    %Contour_Points_Angles = [];
    end
 end
end
TD = Trn_or_Tst_Data;


%% OLD VERSION
% list_of_folders = dir(Path);
%   list_of_folders(1:2) = [];
%   Trn_or_Tst_Data = [];
%   Contour_Points_Curvatures = [];
%   Conn_Comp_Seg_Codes = [];
% for folders_counter=1 : Num_of_Writers %length(list_of_folders)
%     sub_folder_name= list_of_folders(folders_counter).name;
%     All_images = dir(fullfile(strcat(Path,sub_folder_name),'\*.bmp'));
%  for ii=1 : length(All_images)
%     imagename = strcat(strcat(Path,sub_folder_name),strcat('\',All_images(ii).name));
%     I = imread(imagename);
%     I = padarray(I, [9 9]);
%     dilatedImage = imdilate(I,strel('disk',1));
%     %% Here is the calculation of contour points curvatures feature
%     %Contour_Points_Curvatures = Calculate_Contour_Curvature(dilatedImage);
%     B = bwboundaries(dilatedImage);    
%     boundary = B{1}; 
%     Contour_Points_Curvatures = Calculate_Concavity_Convexity(boundary, Line_Seg);
%     Conn_Comp_Seg_Codes = Contour_Curve_Segmentation_CON2_E(Contour_Points_Curvatures,Curve_Fragment,Gap_Val, Prep_Dist_Interval, Line_Dist_Interval, Theta1_Intervals, Theta2_Intervals, sub_folder_name);
%     
%     %% Here is the preparation of the features
%     Trn_or_Tst_Data = [ Trn_or_Tst_Data; Conn_Comp_Seg_Codes ];
%     Conn_Comp_Seg_Codes = [];
%     Contour_Points_Curvatures = [];
%     %Contour_Points_Angles = [];
%  end
% end
% TD = Trn_or_Tst_Data;