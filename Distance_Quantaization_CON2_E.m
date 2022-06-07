function Distance_Histogram = Distance_Quantaization_CON2_E( org_points_distances, Prep_Dist_Interval, Line_Dist_Interval, dist_type )
  if dist_type == 1
   Seg_points_cons_Histogram = zeros(1,Prep_Dist_Interval);
  else 
   Seg_points_cons_Histogram = zeros(1,Line_Dist_Interval);   
  end
  Seg_length = size ( org_points_distances);
  for i = 1 : Seg_length(2)
   %% Quantaization on the base of 13 periods
   if dist_type == 1
      if Prep_Dist_Interval == 13 
       if org_points_distances(i) >= 0 && org_points_distances(i) < 1
           Seg_points_cons_Histogram(1) = Seg_points_cons_Histogram(1)+ 1;
       elseif org_points_distances(i) >= 1 && org_points_distances(i) < 2
           Seg_points_cons_Histogram(2) = Seg_points_cons_Histogram(2)+1;
       elseif org_points_distances(i) >= 2 && org_points_distances(i) < 3
           Seg_points_cons_Histogram(3) = Seg_points_cons_Histogram(3)+1;
       elseif org_points_distances(i) >= 3 && org_points_distances(i) < 4
           Seg_points_cons_Histogram(4) = Seg_points_cons_Histogram(4)+1;
       elseif org_points_distances(i) >= 4 && org_points_distances(i) < 5
           Seg_points_cons_Histogram(5)= Seg_points_cons_Histogram(5)+1; 
       elseif org_points_distances(i) >= 5 && org_points_distances(i) < 6
           Seg_points_cons_Histogram(6) = Seg_points_cons_Histogram(6)+1;
       elseif org_points_distances(i) >= 6 && org_points_distances(i) < 7
           Seg_points_cons_Histogram(7) = Seg_points_cons_Histogram(7)+1;
       elseif org_points_distances(i) >= 7 && org_points_distances(i) < 8
           Seg_points_cons_Histogram(8) = Seg_points_cons_Histogram(8)+1;
       elseif org_points_distances(i) >= 8 && org_points_distances(i) < 9
           Seg_points_cons_Histogram(9) = Seg_points_cons_Histogram(9)+1;
       elseif org_points_distances(i) >= 9 && org_points_distances(i) < 10
           Seg_points_cons_Histogram(10) = Seg_points_cons_Histogram(10)+1;
       elseif org_points_distances(i) >= 10 && org_points_distances(i) < 11
           Seg_points_cons_Histogram(11) = Seg_points_cons_Histogram(11)+1;
       elseif org_points_distances(i) >= 11 && org_points_distances(i) < 12
           Seg_points_cons_Histogram(12) = Seg_points_cons_Histogram(12)+1;
       else
           Seg_points_cons_Histogram(13) = Seg_points_cons_Histogram(13)+1; 
       end
      elseif Prep_Dist_Interval == 15 
       if org_points_distances(i) >= 0 && org_points_distances(i) < 1
           Seg_points_cons_Histogram(1) = Seg_points_cons_Histogram(1)+ 1;
       elseif org_points_distances(i) >= 1 && org_points_distances(i) < 2
           Seg_points_cons_Histogram(2) = Seg_points_cons_Histogram(2)+1;
       elseif org_points_distances(i) >= 2 && org_points_distances(i) < 3
           Seg_points_cons_Histogram(3) = Seg_points_cons_Histogram(3)+1;
       elseif org_points_distances(i) >= 3 && org_points_distances(i) < 4
           Seg_points_cons_Histogram(4) = Seg_points_cons_Histogram(4)+1;
       elseif org_points_distances(i) >= 4 && org_points_distances(i) < 5
           Seg_points_cons_Histogram(5)= Seg_points_cons_Histogram(5)+1; 
       elseif org_points_distances(i) >= 5 && org_points_distances(i) < 6
           Seg_points_cons_Histogram(6) = Seg_points_cons_Histogram(6)+1;
       elseif org_points_distances(i) >= 6 && org_points_distances(i) < 7
           Seg_points_cons_Histogram(7) = Seg_points_cons_Histogram(7)+1;
       elseif org_points_distances(i) >= 7 && org_points_distances(i) < 8
           Seg_points_cons_Histogram(8) = Seg_points_cons_Histogram(8)+1;
       elseif org_points_distances(i) >= 8 && org_points_distances(i) < 10
           Seg_points_cons_Histogram(9) = Seg_points_cons_Histogram(9)+1;
       elseif org_points_distances(i) >= 10 && org_points_distances(i) < 12
           Seg_points_cons_Histogram(10) = Seg_points_cons_Histogram(10)+1;
       elseif org_points_distances(i) >= 12 && org_points_distances(i) < 14
           Seg_points_cons_Histogram(11) = Seg_points_cons_Histogram(11)+1;
       elseif org_points_distances(i) >= 14 && org_points_distances(i) < 16
           Seg_points_cons_Histogram(12) = Seg_points_cons_Histogram(12)+1;
       elseif org_points_distances(i) >= 16 && org_points_distances(i) < 18
           Seg_points_cons_Histogram(13) = Seg_points_cons_Histogram(13)+1;
       elseif org_points_distances(i) >= 18 && org_points_distances(i) < 20
           Seg_points_cons_Histogram(14) = Seg_points_cons_Histogram(14)+1;
       else
           Seg_points_cons_Histogram(15) = Seg_points_cons_Histogram(15)+1; 
       end
      elseif Prep_Dist_Interval == 20
          if org_points_distances(i) >= 0 && org_points_distances(i) < 0.8
           Seg_points_cons_Histogram(1) = Seg_points_cons_Histogram(1)+ 1;
       elseif org_points_distances(i) >= 0.8 && org_points_distances(i) < 1.6
           Seg_points_cons_Histogram(2) = Seg_points_cons_Histogram(2)+1;
       elseif org_points_distances(i) >= 1.6 && org_points_distances(i) < 2.4
           Seg_points_cons_Histogram(3) = Seg_points_cons_Histogram(3)+1;
       elseif org_points_distances(i) >= 2.4 && org_points_distances(i) < 3.2
           Seg_points_cons_Histogram(4) = Seg_points_cons_Histogram(4)+1;
       elseif org_points_distances(i) >= 3.2 && org_points_distances(i) < 4
           Seg_points_cons_Histogram(5)= Seg_points_cons_Histogram(5)+1; 
       elseif org_points_distances(i) >= 4 && org_points_distances(i) < 4.8
           Seg_points_cons_Histogram(6) = Seg_points_cons_Histogram(6)+1;
       elseif org_points_distances(i) >= 4.8 && org_points_distances(i) < 5.6
           Seg_points_cons_Histogram(7) = Seg_points_cons_Histogram(7)+1;
       elseif org_points_distances(i) >= 5.6 && org_points_distances(i) < 6.4
           Seg_points_cons_Histogram(8) = Seg_points_cons_Histogram(8)+1;
       elseif org_points_distances(i) >= 6.4 && org_points_distances(i) < 7.2
           Seg_points_cons_Histogram(9) = Seg_points_cons_Histogram(9)+1;
       elseif org_points_distances(i) >= 7.2 && org_points_distances(i) < 8
           Seg_points_cons_Histogram(10) = Seg_points_cons_Histogram(10)+1;
       elseif org_points_distances(i) >= 8 && org_points_distances(i) < 8.8
           Seg_points_cons_Histogram(11) = Seg_points_cons_Histogram(11)+1;
       elseif org_points_distances(i) >= 8.8 && org_points_distances(i) < 9.6
           Seg_points_cons_Histogram(12) = Seg_points_cons_Histogram(12)+1;
       elseif org_points_distances(i) >= 9.6 && org_points_distances(i) < 10.4
           Seg_points_cons_Histogram(13) = Seg_points_cons_Histogram(13)+1;
       elseif org_points_distances(i) >= 10.4 && org_points_distances(i) < 11.2
           Seg_points_cons_Histogram(14) = Seg_points_cons_Histogram(14)+1;
       elseif org_points_distances(i) >= 11.2 && org_points_distances(i) < 12
           Seg_points_cons_Histogram(15) = Seg_points_cons_Histogram(15)+1; 
       elseif org_points_distances(i) >= 12 && org_points_distances(i) < 14
           Seg_points_cons_Histogram(16) = Seg_points_cons_Histogram(16)+1;
       elseif org_points_distances(i) >= 14 && org_points_distances(i) < 16
           Seg_points_cons_Histogram(17) = Seg_points_cons_Histogram(17)+1;
       elseif org_points_distances(i) >= 16 && org_points_distances(i) < 18
           Seg_points_cons_Histogram(18) = Seg_points_cons_Histogram(18)+1;
       elseif org_points_distances(i) >= 18 && org_points_distances(i) < 20
           Seg_points_cons_Histogram(19) = Seg_points_cons_Histogram(19)+1;
       else
           Seg_points_cons_Histogram(20) = Seg_points_cons_Histogram(20)+1; 
          end
      else 
       if org_points_distances(i) >= 0 && org_points_distances(i) < 1.3
           Seg_points_cons_Histogram(1) = Seg_points_cons_Histogram(1)+ 1;
       elseif org_points_distances(i) >= 1.3 && org_points_distances(i) < 2.6
           Seg_points_cons_Histogram(2) = Seg_points_cons_Histogram(2)+1;
       elseif org_points_distances(i) >= 2.6 && org_points_distances(i) < 3.9
           Seg_points_cons_Histogram(3) = Seg_points_cons_Histogram(3)+1;
       elseif org_points_distances(i) >= 3.9 && org_points_distances(i) < 5.2
           Seg_points_cons_Histogram(4) = Seg_points_cons_Histogram(4)+1;
       elseif org_points_distances(i) >= 5.2 && org_points_distances(i) < 6.5
           Seg_points_cons_Histogram(5)= Seg_points_cons_Histogram(5)+1; 
       elseif org_points_distances(i) >= 6.5 && org_points_distances(i) < 7.8
           Seg_points_cons_Histogram(6) = Seg_points_cons_Histogram(6)+1;
       elseif org_points_distances(i) >= 7.8 && org_points_distances(i) < 9.1
           Seg_points_cons_Histogram(7) = Seg_points_cons_Histogram(7)+1;
       elseif org_points_distances(i) >= 9.1 && org_points_distances(i) < 10.5
           Seg_points_cons_Histogram(8) = Seg_points_cons_Histogram(8)+1;
       elseif org_points_distances(i) >= 10.5 && org_points_distances(i) < 13.5
           Seg_points_cons_Histogram(9) = Seg_points_cons_Histogram(9)+1;
       else
           Seg_points_cons_Histogram(10) = Seg_points_cons_Histogram(10)+1;
       end
      end
   else
      if Line_Dist_Interval == 13
       if org_points_distances(i) >= 0 && org_points_distances(i) < 2
           Seg_points_cons_Histogram(1) = Seg_points_cons_Histogram(1)+ 1;
       elseif org_points_distances(i) >= 2 && org_points_distances(i) < 4
           Seg_points_cons_Histogram(2) = Seg_points_cons_Histogram(2)+1;
       elseif org_points_distances(i) >= 4 && org_points_distances(i) < 6
           Seg_points_cons_Histogram(3) = Seg_points_cons_Histogram(3)+1;
       elseif org_points_distances(i) >= 6 && org_points_distances(i) < 8
           Seg_points_cons_Histogram(4) = Seg_points_cons_Histogram(4)+1;
       elseif org_points_distances(i) >= 8 && org_points_distances(i) < 10
           Seg_points_cons_Histogram(5)= Seg_points_cons_Histogram(5)+1; 
       elseif org_points_distances(i) >= 10 && org_points_distances(i) < 12
           Seg_points_cons_Histogram(6) = Seg_points_cons_Histogram(6)+1;
       elseif org_points_distances(i) >= 12 && org_points_distances(i) < 14
           Seg_points_cons_Histogram(7) = Seg_points_cons_Histogram(7)+1;
       elseif org_points_distances(i) >= 14 && org_points_distances(i) < 16
           Seg_points_cons_Histogram(8) = Seg_points_cons_Histogram(8)+1;
       elseif org_points_distances(i) >= 16 && org_points_distances(i) < 18
           Seg_points_cons_Histogram(9) = Seg_points_cons_Histogram(9)+1;
       elseif org_points_distances(i) >= 18 && org_points_distances(i) < 20
           Seg_points_cons_Histogram(10) = Seg_points_cons_Histogram(10)+1;
       elseif org_points_distances(i) >= 20 && org_points_distances(i) < 22
           Seg_points_cons_Histogram(11) = Seg_points_cons_Histogram(11)+1;
       elseif org_points_distances(i) >= 22 && org_points_distances(i) < 24
           Seg_points_cons_Histogram(12) = Seg_points_cons_Histogram(12)+1;
       else
           Seg_points_cons_Histogram(13) = Seg_points_cons_Histogram(13)+1; 
       end
      elseif Line_Dist_Interval == 20 
       if org_points_distances(i) >= 0 && org_points_distances(i) < 10
           Seg_points_cons_Histogram(1) = Seg_points_cons_Histogram(1)+ 1;
       elseif org_points_distances(i) >= 10 && org_points_distances(i) < 13
           Seg_points_cons_Histogram(2) = Seg_points_cons_Histogram(2)+1;
       elseif org_points_distances(i) >= 13 && org_points_distances(i) < 16
           Seg_points_cons_Histogram(3) = Seg_points_cons_Histogram(3)+1;
       elseif org_points_distances(i) >= 16 && org_points_distances(i) < 19
           Seg_points_cons_Histogram(4) = Seg_points_cons_Histogram(4)+1;
       elseif org_points_distances(i) >= 19 && org_points_distances(i) < 21
           Seg_points_cons_Histogram(5)= Seg_points_cons_Histogram(5)+1; 
       elseif org_points_distances(i) >= 21 && org_points_distances(i) < 23
           Seg_points_cons_Histogram(6) = Seg_points_cons_Histogram(6)+1;
       elseif org_points_distances(i) >= 23 && org_points_distances(i) < 25
           Seg_points_cons_Histogram(7) = Seg_points_cons_Histogram(7)+1;
       elseif org_points_distances(i) >= 25 && org_points_distances(i) < 27
           Seg_points_cons_Histogram(8) = Seg_points_cons_Histogram(8)+1;
       elseif org_points_distances(i) >= 27 && org_points_distances(i) < 29
           Seg_points_cons_Histogram(9) = Seg_points_cons_Histogram(9)+1;
       elseif org_points_distances(i) >= 29 && org_points_distances(i) < 31
           Seg_points_cons_Histogram(10) = Seg_points_cons_Histogram(10)+1;
       elseif org_points_distances(i) >= 31 && org_points_distances(i) < 33
           Seg_points_cons_Histogram(11) = Seg_points_cons_Histogram(11)+1;
       elseif org_points_distances(i) >= 33 && org_points_distances(i) < 35
           Seg_points_cons_Histogram(12) = Seg_points_cons_Histogram(12)+1;
       elseif org_points_distances(i) >= 35 && org_points_distances(i) < 37
           Seg_points_cons_Histogram(13) = Seg_points_cons_Histogram(13)+1;
       elseif org_points_distances(i) >= 37 && org_points_distances(i) < 39
           Seg_points_cons_Histogram(14) = Seg_points_cons_Histogram(14)+1;
       elseif org_points_distances(i) >= 39 && org_points_distances(i) < 41
           Seg_points_cons_Histogram(15) = Seg_points_cons_Histogram(15)+1;
       elseif org_points_distances(i) >= 41 && org_points_distances(i) < 43
           Seg_points_cons_Histogram(16) = Seg_points_cons_Histogram(16)+1;
       elseif org_points_distances(i) >= 43 && org_points_distances(i) < 45
           Seg_points_cons_Histogram(17) = Seg_points_cons_Histogram(17)+1;
       elseif org_points_distances(i) >= 45 && org_points_distances(i) < 47
           Seg_points_cons_Histogram(18) = Seg_points_cons_Histogram(18)+1;
       elseif org_points_distances(i) >= 47 && org_points_distances(i) < 49
           Seg_points_cons_Histogram(19) = Seg_points_cons_Histogram(19)+1;
       else
           Seg_points_cons_Histogram(20) = Seg_points_cons_Histogram(20)+1;
          end
      elseif Line_Dist_Interval == 10
          if org_points_distances(i) >= 0 && org_points_distances(i) < 13
           Seg_points_cons_Histogram(1) = Seg_points_cons_Histogram(1)+ 1;
       elseif org_points_distances(i) >= 13 && org_points_distances(i) < 16
           Seg_points_cons_Histogram(2) = Seg_points_cons_Histogram(2)+1;
       elseif org_points_distances(i) >= 16 && org_points_distances(i) < 19
           Seg_points_cons_Histogram(3) = Seg_points_cons_Histogram(3)+1;
       elseif org_points_distances(i) >= 19 && org_points_distances(i) < 23
           Seg_points_cons_Histogram(4) = Seg_points_cons_Histogram(4)+1;
       elseif org_points_distances(i) >= 23 && org_points_distances(i) < 27
           Seg_points_cons_Histogram(5)= Seg_points_cons_Histogram(5)+1; 
       elseif org_points_distances(i) >= 27 && org_points_distances(i) < 31
           Seg_points_cons_Histogram(6) = Seg_points_cons_Histogram(6)+1;
       elseif org_points_distances(i) >= 31 && org_points_distances(i) < 35
           Seg_points_cons_Histogram(7) = Seg_points_cons_Histogram(7)+1;
       elseif org_points_distances(i) >= 35 && org_points_distances(i) < 39
           Seg_points_cons_Histogram(8) = Seg_points_cons_Histogram(8)+1;
       elseif org_points_distances(i) >= 39 && org_points_distances(i) < 43
           Seg_points_cons_Histogram(9) = Seg_points_cons_Histogram(9)+1;
       else
           Seg_points_cons_Histogram(10) = Seg_points_cons_Histogram(10)+1;
       end
      else
         if org_points_distances(i) >= 0 && org_points_distances(i) < 11
           Seg_points_cons_Histogram(1) = Seg_points_cons_Histogram(1)+ 1;
       elseif org_points_distances(i) >= 11 && org_points_distances(i) < 14
           Seg_points_cons_Histogram(2) = Seg_points_cons_Histogram(2)+1;
       elseif org_points_distances(i) >= 14 && org_points_distances(i) < 17
           Seg_points_cons_Histogram(3) = Seg_points_cons_Histogram(3)+1;
       elseif org_points_distances(i) >= 17 && org_points_distances(i) < 20
           Seg_points_cons_Histogram(4) = Seg_points_cons_Histogram(4)+1;
       elseif org_points_distances(i) >= 20 && org_points_distances(i) < 24
           Seg_points_cons_Histogram(5)= Seg_points_cons_Histogram(5)+1; 
       elseif org_points_distances(i) >= 24 && org_points_distances(i) < 26.5
           Seg_points_cons_Histogram(6) = Seg_points_cons_Histogram(6)+1;
       elseif org_points_distances(i) >= 26.5 && org_points_distances(i) < 29
           Seg_points_cons_Histogram(7) = Seg_points_cons_Histogram(7)+1;
       elseif org_points_distances(i) >= 29 && org_points_distances(i) < 31
           Seg_points_cons_Histogram(8) = Seg_points_cons_Histogram(8)+1;
       elseif org_points_distances(i) >= 31 && org_points_distances(i) < 33
           Seg_points_cons_Histogram(9) = Seg_points_cons_Histogram(9)+1;
       elseif org_points_distances(i) >= 33 && org_points_distances(i) < 36
           Seg_points_cons_Histogram(10) = Seg_points_cons_Histogram(10)+1;
       elseif org_points_distances(i) >= 36 && org_points_distances(i) < 40
           Seg_points_cons_Histogram(11) = Seg_points_cons_Histogram(11)+1;
       elseif org_points_distances(i) >= 40 && org_points_distances(i) < 43
           Seg_points_cons_Histogram(12) = Seg_points_cons_Histogram(12)+1;
       elseif org_points_distances(i) >= 43 && org_points_distances(i) < 47
           Seg_points_cons_Histogram(13) = Seg_points_cons_Histogram(13)+1;
       elseif org_points_distances(i) >= 47 && org_points_distances(i) < 49
           Seg_points_cons_Histogram(14) = Seg_points_cons_Histogram(14)+1;
       else
           Seg_points_cons_Histogram(15) = Seg_points_cons_Histogram(15)+1;
       end 
      end
   end
  end
%Seg_points_cons_Histogram = Seg_points_cons_Histogram/40;
Distance_Histogram = Seg_points_cons_Histogram;
  end


