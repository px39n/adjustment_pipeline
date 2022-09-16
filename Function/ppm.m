function out = ppm(list,initial,ppm)
%s_dis = ppm(D_data,1,2);
%initial:mm  ppm: m    
%(mm per km)
out=(initial+ppm*list/1000)*0.001;
end

