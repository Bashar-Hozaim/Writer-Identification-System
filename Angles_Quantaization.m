function Angles_Histogram = Angles_Quantaization( org_seg_angles, Theta_1_2_Intervals )
  Seg_Angles_Histogram = zeros(1,Theta_1_2_Intervals);
  Seg_length = size ( org_seg_angles);
  for i = 1 : Seg_length(2)
      %% here I have to add if else statment to diffretiate between intervals
      
      % Quantaization on the base of 16 periods 
    if Theta_1_2_Intervals == 16
      if org_seg_angles(i) >= 0 && org_seg_angles(i) < 22.5
           Seg_Angles_Histogram(1) = Seg_Angles_Histogram(1)+ 1;
       elseif org_seg_angles(i) >= 22.5 && org_seg_angles(i) < 45
           Seg_Angles_Histogram(2) = Seg_Angles_Histogram(2)+1;
       elseif org_seg_angles(i) >= 45 && org_seg_angles(i) < 67.5
           Seg_Angles_Histogram(3) = Seg_Angles_Histogram(3)+1;
       elseif org_seg_angles(i) >= 67.5 && org_seg_angles(i) < 90
           Seg_Angles_Histogram(4) = Seg_Angles_Histogram(4)+1;
       elseif org_seg_angles(i) >= 90 && org_seg_angles(i) < 112.5
           Seg_Angles_Histogram(5)= Seg_Angles_Histogram(5)+1; 
       elseif org_seg_angles(i) >= 112.5 && org_seg_angles(i) < 135
           Seg_Angles_Histogram(6) = Seg_Angles_Histogram(6)+1;
       elseif org_seg_angles(i) >= 135 && org_seg_angles(i) < 157.5
           Seg_Angles_Histogram(7) = Seg_Angles_Histogram(7)+1;
       elseif org_seg_angles(i) >= 157.5 && org_seg_angles(i) < 180
           Seg_Angles_Histogram(8) = Seg_Angles_Histogram(8)+1;
       elseif org_seg_angles(i) >= 180 && org_seg_angles(i) < 202.5
           Seg_Angles_Histogram(9) = Seg_Angles_Histogram(9)+1;
       elseif org_seg_angles(i) >= 202.5 && org_seg_angles(i) < 225
           Seg_Angles_Histogram(10) = Seg_Angles_Histogram(10)+1;
       elseif org_seg_angles(i) >= 225 && org_seg_angles(i) < 247.5
           Seg_Angles_Histogram(11) = Seg_Angles_Histogram(11)+1;
       elseif org_seg_angles(i) >= 247.5 && org_seg_angles(i) < 270
           Seg_Angles_Histogram(12) = Seg_Angles_Histogram(12)+1; 
       elseif org_seg_angles(i) >= 270 && org_seg_angles(i) < 292.5
           Seg_Angles_Histogram(13) = Seg_Angles_Histogram(13)+1;
       elseif org_seg_angles(i) >= 292.5 && org_seg_angles(i) < 315
           Seg_Angles_Histogram(14) = Seg_Angles_Histogram(14)+1;
       elseif org_seg_angles(i) >= 315 && org_seg_angles(i) < 337.5
           Seg_Angles_Histogram(15) = Seg_Angles_Histogram(15)+1;
       else
           Seg_Angles_Histogram(16) = Seg_Angles_Histogram(16)+1;
      end
    elseif Theta_1_2_Intervals == 12
     % Quantaization on the base of 12 periods
       if org_seg_angles(i) >= 0 && org_seg_angles(i) < 30
           Seg_Angles_Histogram(1) = Seg_Angles_Histogram(1)+ 1;
       elseif org_seg_angles(i) >= 30 && org_seg_angles(i) < 60
           Seg_Angles_Histogram(2) = Seg_Angles_Histogram(2)+1;
       elseif org_seg_angles(i) >= 60 && org_seg_angles(i) < 90
           Seg_Angles_Histogram(3) = Seg_Angles_Histogram(3)+1;
       elseif org_seg_angles(i) >= 90 && org_seg_angles(i) < 120
           Seg_Angles_Histogram(4) = Seg_Angles_Histogram(4)+1;
       elseif org_seg_angles(i) >= 120 && org_seg_angles(i) < 150
           Seg_Angles_Histogram(5)= Seg_Angles_Histogram(5)+1; 
       elseif org_seg_angles(i) >= 150 && org_seg_angles(i) < 180
           Seg_Angles_Histogram(6) = Seg_Angles_Histogram(6)+1;
       elseif org_seg_angles(i) >= 180 && org_seg_angles(i) < 210
           Seg_Angles_Histogram(7) = Seg_Angles_Histogram(7)+1;
       elseif org_seg_angles(i) >= 210 && org_seg_angles(i) < 240
           Seg_Angles_Histogram(8) = Seg_Angles_Histogram(8)+1;
       elseif org_seg_angles(i) >= 240 && org_seg_angles(i) < 270
           Seg_Angles_Histogram(9) = Seg_Angles_Histogram(9)+1;
       elseif org_seg_angles(i) >= 270 && org_seg_angles(i) < 300
           Seg_Angles_Histogram(10) = Seg_Angles_Histogram(10)+1;
       elseif org_seg_angles(i) >= 300 && org_seg_angles(i) < 330
           Seg_Angles_Histogram(11) = Seg_Angles_Histogram(11)+1;
       else
           Seg_Angles_Histogram(12) = Seg_Angles_Histogram(12)+1;
       end
    elseif Theta_1_2_Intervals == 8
        % Quantaization on the base of 8 periods
       if org_seg_angles(i) >= 0 && org_seg_angles(i) < 45
           Seg_Angles_Histogram(1) = Seg_Angles_Histogram(1)+ 1;
       elseif org_seg_angles(i) >= 45 && org_seg_angles(i) < 90
           Seg_Angles_Histogram(2) = Seg_Angles_Histogram(2)+1;
       elseif org_seg_angles(i) >= 90 && org_seg_angles(i) < 135
           Seg_Angles_Histogram(3) = Seg_Angles_Histogram(3)+1;
       elseif org_seg_angles(i) >= 135 && org_seg_angles(i) < 180
           Seg_Angles_Histogram(4) = Seg_Angles_Histogram(4)+1;
       elseif org_seg_angles(i) >= 180 && org_seg_angles(i) < 225
           Seg_Angles_Histogram(5)= Seg_Angles_Histogram(5)+1; 
       elseif org_seg_angles(i) >= 225 && org_seg_angles(i) < 270
           Seg_Angles_Histogram(6) = Seg_Angles_Histogram(6)+1;
       elseif org_seg_angles(i) >= 270 && org_seg_angles(i) < 315
           Seg_Angles_Histogram(7) = Seg_Angles_Histogram(7)+1;
       else
           Seg_Angles_Histogram(8) = Seg_Angles_Histogram(8)+1;
       end
    else % quantaization based on 6 intervals
        if org_seg_angles(i) >= 0 && org_seg_angles(i) < 60
           Seg_Angles_Histogram(1) = Seg_Angles_Histogram(1)+ 1;
       elseif org_seg_angles(i) >= 60 && org_seg_angles(i) < 120
           Seg_Angles_Histogram(2) = Seg_Angles_Histogram(2)+1;
       elseif org_seg_angles(i) >= 120 && org_seg_angles(i) < 180
           Seg_Angles_Histogram(3) = Seg_Angles_Histogram(3)+1;
       elseif org_seg_angles(i) >= 180 && org_seg_angles(i) < 240
           Seg_Angles_Histogram(4) = Seg_Angles_Histogram(4)+1;
       elseif org_seg_angles(i) >= 240 && org_seg_angles(i) < 300
           Seg_Angles_Histogram(5)= Seg_Angles_Histogram(5)+1; 
       else 
           Seg_Angles_Histogram(6)= Seg_Angles_Histogram(6)+1; 
        end
    end
end
Angles_Histogram = Seg_Angles_Histogram;
end



