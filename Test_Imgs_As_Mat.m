tic;
%   Path = '..\DATA\Training_KHATT_100_Writers\';
  Path = 'E:\Arabic WI System_part2_2\Test_500_Writers\';
  list_of_folders = dir(Path);
  list_of_folders(1:2) = [];
  KHATT_Test_Imgs_As_Mat = {};
  
for folders_counter=1 : length(list_of_folders) %Num_of_Writers
    sub_folder_name= list_of_folders(folders_counter).name;
    All_images = dir(fullfile(strcat(Path,sub_folder_name),'\*.bmp'));
 for ii=1 : length(All_images)
    imagename = strcat(strcat(Path,sub_folder_name),strcat('\',All_images(ii).name));
    I = imread(imagename);
    I = padarray(I, [9 9]);
    dilatedImage = imdilate(I,strel('disk',1));
    KHATT_Test_Imgs_As_Mat{folders_counter,ii} = dilatedImage;
 end
end
save Testing_KHATT_Writers KHATT_Test_Imgs_As_Mat;
toc;