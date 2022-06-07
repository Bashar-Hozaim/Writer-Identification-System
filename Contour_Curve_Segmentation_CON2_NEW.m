function segmented_contour = Contour_Curve_Segmentation_CON2_NEW( boundary,Curve_Fragment,Gap_Val, Prep_Dist_Interval, Line_Dist_Interval, Theta1_Intervals, Theta2_Intervals, current_writer )
% This function uses the contour boundary points and segments the
% contour into curves segments
gap = Gap_Val; Lf = Curve_Fragment;
seg_contour = [];
tmp_list = []; 
current_gap_index = 1;
length_org_contour = length( boundary );
while ( length_org_contour - current_gap_index >= Lf )
   tmp_list = boundary( current_gap_index  : (current_gap_index + Lf)-1, 1);
   tmp_list = tmp_list.';
   % Call quantaization function for perpendiculare distance
   Curv_Perp_Dist_Histogram = Distance_Quantaization_CON2_E(tmp_list,Prep_Dist_Interval, Line_Dist_Interval, 1); 
   %%   Call quantaization function for perpendiculare distance
   tmp_list = boundary( current_gap_index  : (current_gap_index + Lf)-1, 2);
   tmp_list = tmp_list.';
   Curv_Seg_Line_Dist_Histogram = Distance_Quantaization_CON2_E(tmp_list,Prep_Dist_Interval, Line_Dist_Interval,2); 
   %% Augmenting the feature by the first angle
   tmp_list = boundary( current_gap_index  : (current_gap_index + Lf)-1, 3);
   tmp_list = tmp_list.';
   % Call quantaization function for first angle
   Curv_Seg_theta1_Histogram = Angles_Quantaization(tmp_list, Theta1_Intervals); 
   %%   Augmenting the feature by the second angle
   tmp_list = boundary( current_gap_index  : (current_gap_index + Lf)-1, 4);
   tmp_list = tmp_list.';
   % Call quantaization function for first angle
   Curv_Seg_theta2_Histogram = Angles_Quantaization(tmp_list, Theta2_Intervals); 
   %% change segmentation location
   current_gap_index = (current_gap_index + gap);
   seg_contour = [ seg_contour ; Curv_Perp_Dist_Histogram Curv_Seg_Line_Dist_Histogram Curv_Seg_theta1_Histogram Curv_Seg_theta2_Histogram];  
end
   x = size(seg_contour);
   seg_contour(:,x(2)+1) = current_writer;
   segmented_contour = seg_contour;
end