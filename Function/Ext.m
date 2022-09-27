function   [Result_hat,Result]=Ext(Str,Sign,flag)
%[xx_data,~]=readfile("FixedPoints.txt",'xx',"PTX")
%[xx_data,~]=readfile("NewPoints.txt",'xx',"PTY")
%[xx_data,~]=readfile("Directions.txt",'y:x',"PTYX")
%[xx_data,~]=readfile("Directions.txt",'M:x',"H")
%[yy_data,~]=readfile("Distances.txt",'yy',"DIS")
%[xx_data,~]=readfile("Directions.txt",'X:x',"DIR")
%[xx_data,~]=readfile("Directions.txt",'X:x',"1st")
%[xx_data,~]=readfile("Directions.txt",'X:x',"2st")
%[xx_data,~]=readfile("Directions.txt",'X:x',"AN")

if flag=="PTYX" 
    Sign=strsplit(Sign,":");
    
    [h1,r1]=evalin("caller","Ext('"+Str+"','"+Sign{1}+"','PTY');");
    [h2,r2]=evalin("caller","Ext('"+Str+"','"+Sign{2}+"','PTX');");
    Result_hat= [h1;h2];
    Result=[r1;r2]; 
    if length(Sign)==3
        assignin("base",Sign{3},Result);
    end
    return
end
 
File=load(Str);
%fileID = fopen(Str);
%C = textscan(fileID,'%s %s %s %s');
%fclose(fileID);
%File=string(zeros(length(C{1}),length(C)));
%for i=1:length(C)
%    for j=1:length(C{i})
%        File(j,i)=C{i}{j};
%    end
%end


Result=[];
Result_hat=[];

Sign_Or=Sign;
Sign=strsplit(Sign,":");
N_Sign=Sign{1};
Sign=Sign{end};
  
for i=1:size(File,1)
    if flag=="1st" 
        number=num2str(i);
        Result_hat=[Result_hat; File(i,1)];
    elseif  flag=="2st"    
        number=num2str(i);
        Result_hat=[Result_hat; File(i,2)];
        
    elseif flag=="PTY"||  flag=="H" 
        number=num2str(File(i,1));
        Result_hat=[Result_hat; File(i,2)];
    elseif flag=="PTX" ||  flag=="3st"
        number=num2str(File(i,1));
        Result_hat=[Result_hat; File(i,3)];
    elseif flag=="DIS" ||  flag=="DIR"  || flag=="LEVEL"
        number=[num2str(File(i,1)) '_' num2str(File(i,2))];
        Result_hat=[Result_hat; File(i,3)];
    elseif flag=="W"
        number=num2str(File(i,1));
   elseif flag=="AN"
        number=[num2str(File(i,1)) '_' num2str(File(i,2)) '_' num2str(File(i,3))];
        
        
    else
        error("wrong flag"+flag)
        
    end
    evalin("caller",['syms ' Sign number ';']);
    eval(['syms ' Sign number ';']);
    Result=unique([Result;eval([Sign number])],"stable");
end

if length(strsplit(Sign_Or,":"))==1
    assignin("caller",[Sign '_data'],Result_hat);
    assignin("caller",Sign,Result);
else
    assignin("caller",N_Sign,Result);
    assignin("caller",[N_Sign '_data'],Result_hat);
end
if flag=="W" || flag=="AN"
        Result_hat=zeros(length(Result),1);   
end
    
end

