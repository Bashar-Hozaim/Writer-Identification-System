function segmented_contour = HW_Contour_Curve_Segmentation( boundary, LF_Val, Gap, Theta1_Intervals, Theta2_Intervals, Phi_Intervals, current_writer )
% This function uses the Moore's contour boundary points and segments the
% contour into curves segments
gap =Gap; Lf =LF_Val;
seg_contour = [];
tmp_list = []; 
current_gap_index = 1;
length_org_contour = length( boundary );
while ( length_org_contour - current_gap_index >= Lf )
%    tmp_list = boundary( current_gap_index  : (current_gap_index + Lf)-1, 1);
%    tmp_list = tmp_list.';
%    % Call quantaization function for perpendiculare distance
%    Curv_Perp_Dist_Histogram = Distance_Quantaization(tmp_list,1); 
   %%   Call quantaization function for perpendiculare distance
%    tmp_list = boundary( current_gap_index  : (current_gap_index + Lf)-1, 2);
%    tmp_list = tmp_list.';
%    Curv_Seg_Line_Dist_Histogram = Distance_Quantaization(tmp_list,2); 
   %% Augmenting the feature by the first angle
   tmp_list = boundary( current_gap_index  : (current_gap_index + Lf)-1, 1);
   tmp_list = tmp_list.';
   % Call quantaization function for first angle
   Curv_Seg_theta1_Histogram = Angles_Quantaization(tmp_list,Theta1_Intervals ); 
   %%   Augmenting the feature by the second angle
   tmp_list = boundary( current_gap_index  : (current_gap_index + Lf)-1, 2);
   tmp_list = tmp_list.';
   % Call quantaization function for first angle
   Curv_Seg_theta2_Histogram = Angles_Quantaization(tmp_list, Theta2_Intervals); 
   %% Maniplating with the curve angle itself
   tmp_list = boundary( current_gap_index  : (current_gap_index + Lf)-1, 3);
   tmp_list = tmp_list.';
   % Call quantaization function for first angle
   Curve_Angle_Histogram = New_Quantaization(tmp_list, Phi_Intervals); 
   %% change segmentation location
   current_gap_index = (current_gap_index + gap);
%    seg_contour = [ seg_contour ; Curv_Perp_Dist_Histogram Curv_Seg_Line_Dist_Histogram Curv_Seg_theta1_Histogram Curv_Seg_theta2_Histogram];  
   seg_contour = [ seg_contour ; Curv_Seg_theta1_Histogram Curv_Seg_theta2_Histogram Curve_Angle_Histogram];  
end
   x = size(seg_contour);
   seg_contour(:,x(2)+1) = current_writer;
   segmented_contour = seg_contour;
end