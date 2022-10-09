function []= AnalyzeEList(Elist)

if length(Elist)==6
    jishu=[1 3 5];
    oushu=[2 4 6];
elseif length(Elist)==8
    jishu=[1 3 5 7];
    oushu=[2 4 6 8];
else 
    error("check List")
end

for i=jishu
    temp=strsplit(Elist(i),"=");  
    assignin("base",temp(1),[]);
    symLstr=split(temp(2),"|");
    symLstr=symLstr(2:end-1);
   evalin("base",['tempsys=' '[];']);
    if symLstr~=""
        for jjj=1:length(symLstr)
            symstr=char(symLstr(jjj));
            if length(symstr)>=3 && sum(symstr(1:3)=="Ext")
                try
                evalin("base",['[~,tempsys]=' symstr ';']); %syms ext
                catch
                    error(['[~,tempsys]=' symstr ';'])
                end
                
            else
                try
                evalin("base","syms "+symLstr{jjj}+";") %syms normal
                catch
                    error("syms "+symLstr{jjj}+";")
                end
                newpara=split(symLstr{jjj},"[");
                newpara=replace(newpara{1}," ",";");
                evalin("base",['tempsys=[' newpara '];']);
            end
            evalin("base",[temp(1)+'=['+temp(1)+';tempsys];'])
        end
    end
    
end

for i=oushu
    try
    evalin("base",[Elist(i)+";"]);  %syms value
    
    catch
        error([Elist(i)+";"])
    end
end
evalin("base","clearvars tempsys")

X_O="";
X_=evalin("base","X_");
for i=1:length(X_)
    str_name=string(X_(i));
    X_O=X_O+" "+str_name+"o";
end
evalin("base","syms"+X_O+";")
evalin("base","X_O=["+X_O+"];")
evalin("base","[L_i,X_i]=findDIR();")
evalin("base","X_sym=X_;")
end