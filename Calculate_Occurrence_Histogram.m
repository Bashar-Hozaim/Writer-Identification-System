function Occurrence_Histogram = Calculate_Occurrence_Histogram( Num_of_Writers, Train_or_Test_Sheet )
%   list_of_writers = dir(Path);
%   list_of_writers(1:2) = [];
  load('center');
  x = size(center);
  y = size(Train_or_Test_Sheet);
  Train_or_Test_Histogram = zeros(Num_of_Writers, x(1)+1);%zeros(length(list_of_writers), x(1)+1);
  data_sheet_length = size(Train_or_Test_Sheet);
  i = 1;
 for writers_counter=1 : Num_of_Writers %length(list_of_writers)
    %Writer_ID= list_of_writers(writers_counter).name;
    Train_or_Test_Histogram(writers_counter,x(1)+1)= writers_counter; %str2num(Writer_ID);
    while Train_or_Test_Sheet(i,y(2))== writers_counter && i <= data_sheet_length(1)
       target_cell_index = Calculate_Distance(Train_or_Test_Sheet(i,1:y(2)-1),center);
       Train_or_Test_Histogram(writers_counter,target_cell_index) = Train_or_Test_Histogram(writers_counter,target_cell_index)+1; 
      i = i+1;
      if i == data_sheet_length(1)
          break
      end
    end    
 end
Occurrence_Histogram = Train_or_Test_Histogram;
end




%% OLD VERSION OF THIS FUNCTION
% list_of_writers = dir(Path);
%   list_of_writers(1:2) = [];
%   load('center');
%   x = size(center);
%   y = size(Train_or_Test_Sheet);
%   Train_or_Test_Histogram = zeros(Num_of_Writers, x(1)+1);%zeros(length(list_of_writers), x(1)+1);
%   data_sheet_length = size(Train_or_Test_Sheet);
%   i = 1;
%  for writers_counter=1 : Num_of_Writers %length(list_of_writers)
%     Writer_ID= list_of_writers(writers_counter).name;
%     Train_or_Test_Histogram(writers_counter,x(1)+1)= str2num(Writer_ID);
%     while Train_or_Test_Sheet(i,y(2))== str2num(Writer_ID) && i <= data_sheet_length(1)
%        target_cell_index = Calculate_Distance(Train_or_Test_Sheet(i,1:y(2)-1),center);
%        Train_or_Test_Histogram(writers_counter,target_cell_index) = Train_or_Test_Histogram(writers_counter,target_cell_index)+1; 
%       i = i+1;
%       if i == data_sheet_length(1)
%           break
%       end
%     end    
%  end
% Train_Occurance_Histogram = Train_or_Test_Histogram;
% end
