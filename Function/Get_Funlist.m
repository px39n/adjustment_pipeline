function Funlist = Get_Funlist(target,xyw_sign,model)
% F_ = Get_Funlist(S,['x' 'y'],'DIS')
% F_ = Get_Funlist(D,['x' 'y' 'w'],'DIR')
% F_ = Get_Funlist(D,['x' 'y' 'w'],'MDIR')
% F_ = Get_Funlist(D,['H'],'H')
% F_ = Get_Funlist(D,['x' 'y'],'AN')
% F_ = Get_Funlist(DIR,['DIR'],'ANDIR')
Funlist=[];
xyw_sign=string(xyw_sign);
for i=1:length(target)
    if model=="DIS"
        target_name=sprintf("%s",target(i));
        target_name=regexp(target_name,'\d*\.?\d*','match');
        x_sign=xyw_sign(1);
        y_sign=xyw_sign(2);
        num_1=target_name{1};
        num_2=target_name{2};
        x_num_1=evalin('caller', x_sign+num_1);
        y_num_1=evalin('caller',y_sign+num_1);
        x_num_2=evalin('caller',x_sign+num_2);
        y_num_2=evalin('caller',y_sign+num_2);
        Funlist=[Funlist;Get_Dis(x_num_1,y_num_1,x_num_2,y_num_2)];
        
    elseif model=="dash"    
        target_name=sprintf("%s",target(i));
        target_name=regexp(target_name,'\d*\.?\d*','match');
        x_sign=xyw_sign(1);
        num_1=target_name{1};
        num_2=target_name{2};
        x_num_1=evalin('caller', x_sign+num_1);
        x_num_2=evalin('caller',x_sign+num_2);
        Free_=evalin('caller',"Free_");
        if  ~any(Free_==x_num_1), x_num_1=0; end
        if  ~any(Free_==x_num_2), x_num_2=0; end    
        Funlist=[Funlist;-x_num_2+x_num_1];
        
    elseif model=="H"    
        target_name=sprintf("%s",target(i));
        target_name=regexp(target_name,'\d*\.?\d*','match');
        x_sign=xyw_sign(1);
        num_1=target_name{1};
        num_2=target_name{2};
        x_num_1=evalin('caller', x_sign+num_1);
        x_num_2=evalin('caller',x_sign+num_2);

        Funlist=[Funlist;x_num_2-x_num_1];
        
        
    elseif model=="DIR"
        target_name=sprintf("%s",target(i));
        target_name=regexp(target_name,'\d*\.?\d*','match');
        x_sign=xyw_sign(1);
        y_sign=xyw_sign(2);
        w_sign=xyw_sign(3);
        num_1=target_name{1};
        num_2=target_name{2};
        x_num_1=evalin('caller', x_sign+num_1);
        y_num_1=evalin('caller',y_sign+num_1);
        x_num_2=evalin('caller',x_sign+num_2);
        y_num_2=evalin('caller',y_sign+num_2);
        w_num=evalin('caller',w_sign+num_1);
        Funlist=[Funlist;Get_Direction(x_num_1,y_num_1,x_num_2,y_num_2,w_num)];
        
    elseif model=="MDIR"
        target_name=sprintf("%s",target(i));
        target_name=regexp(target_name,'\d*\.?\d*','match');
        x_sign=xyw_sign(1);
        y_sign=xyw_sign(2);
        w_sign=xyw_sign(3);
        num_1=target_name{1};
        num_2=target_name{2};
        x_num_1=evalin('caller', x_sign+num_1);
        y_num_1=evalin('caller',y_sign+num_1);
        x_num_2=evalin('caller',x_sign+num_2);
        y_num_2=evalin('caller',y_sign+num_2);
        w_num=evalin('caller',w_sign+num_1);
        Funlist=[Funlist;Get_Direction_m(x_num_1,y_num_1,x_num_2,y_num_2,w_num)];
        
        
    elseif model=="AN"
        target_name=sprintf("%s",target(i));
        target_name=regexp(target_name,'\d*\.?\d*','match');
        x_sign=xyw_sign(1);
        y_sign=xyw_sign(2);
        num_1=target_name{1};
        num_2=target_name{2};
        num_3=target_name{3};
        x_num_1=evalin('caller', x_sign+num_1);
        y_num_1=evalin('caller',y_sign+num_1);
        x_num_2=evalin('caller',x_sign+num_2);
        y_num_2=evalin('caller',y_sign+num_2);
        x_num_3=evalin('caller',x_sign+num_3);
        y_num_3=evalin('caller',y_sign+num_3);
        Funlist=[Funlist;Get_Angles(x_num_1,y_num_1,x_num_2,y_num_2,x_num_3,y_num_3)];
        
        
    elseif model=="MAN"
        target_name=sprintf("%s",target(i));
        target_name=regexp(target_name,'\d*\.?\d*','match');
        x_sign=xyw_sign(1);
        y_sign=xyw_sign(2);
        num_1=target_name{1};
        num_2=target_name{2};
        num_3=target_name{3};
        x_num_1=evalin('caller', x_sign+num_1);
        y_num_1=evalin('caller',y_sign+num_1);
        x_num_2=evalin('caller',x_sign+num_2);
        y_num_2=evalin('caller',y_sign+num_2);
        x_num_3=evalin('caller',x_sign+num_3);
        y_num_3=evalin('caller',y_sign+num_3);
        Funlist=[Funlist;Get_Angles_m(x_num_1,y_num_1,x_num_2,y_num_2,x_num_3,y_num_3)];
    
     elseif model=="DIR2AN"
        target_name=sprintf("%s",target(i));
        target_name=regexp(target_name,'\d*\.?\d*','match');
        x_sign=xyw_sign(1);
        num_1=target_name{1};
        num_2=target_name{2};
        num_3=target_name{3};
        DIR12=evalin('caller', x_sign+num_1+"_"+num_2);
        DIR13=evalin('caller', x_sign+num_1+"_"+num_3);
         
        Funlist=[Funlist;DIR13-DIR12];
    elseif model=="Remove_l"
        target_str=arrayfun(@char,target,'UniformOutput',false); 
        Funlist='[';
        for i=1:length(target_str)
            target_str{i}=erase(target_str{i},"l");
            Funlist=[Funlist,target_str{i},';'];
        end
        Funlist=[Funlist,'];'];
    else
        error("wrong flag")
        
    end
end


end
