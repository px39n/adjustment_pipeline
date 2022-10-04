classdef confidence_tool
    %CONFIDENCE_TOOL Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Property1
    end
    
    methods
        function obj = confidence_tool()
            %CONFIDENCE_TOOL Construct an instance of this class
            %   Detailed explanation goes here

        end

        
        function[a,b] = get_interval_norm(obj,prob,e_mean, t_sigma)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            Con_ab=norminv([1-prob,prob]);
            Con_AB=  e_mean+t_sigma*Con_ab;
            disp(sprintf("The interval boundary is [%.4g,%.4g]",Con_AB(1),Con_AB(2)))
            disp(sprintf("The confidence Level = %.2f%%, Error probability = %.2f%%",(2*prob-1)*100,(1-prob)*100*2))
            Ndeal(['a','b'],Con_AB)
        end
        
        function [a,b] = get_interval_t(obj,prob,  e_mean, e_sigma, dof)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            Con_ab=tinv([1-prob,prob],dof);
            Con_AB=  e_mean+e_sigma*Con_ab;
            disp(sprintf("The interval boundary is [%.4g,%.4g]",Con_AB(1),Con_AB(2)))
            disp(sprintf("The confidence Level = %.2f%%, Error probability = %.2f%%",(2*prob-1)*100,(1-prob)*100*2))
            Ndeal(['a','b'],Con_AB)
        end      
        
        function [a,b] = get_interval_chi(obj,prob, e_sigma, dof)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here

            Con_ab=chi2inv([1-prob,prob],dof);
            Con_AB=e_sigma*sqrt(dof./Con_ab);
            disp(sprintf("The interval boundary is [%.4g,%.4g]",Con_AB(1),Con_AB(2)))
            disp(sprintf("The confidence Level = %.2f%%, Error probability = %.2f%%",(2*prob-1)*100,(1-prob)*100*2))
            Ndeal(['a','b'],Con_AB)
        end              
        
        function [a,b]= get_interval_f(obj, prob, e_sigma1, e_sigma2, dof1, dof2)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
 
            Con_ab=finv([1-prob,prob],dof1,dof2);
            Con_AB = e_sigma1/e_sigma2*sqrt(1./[Con_ab(2),Con_ab(1)]);
            disp(sprintf("The interval boundary is [%.4g,%.4g]",Con_AB(1),Con_AB(2)))
            disp(sprintf("The confidence Level = %.2f%%, Error probability = %.2f%%",(2*prob-1)*100,(1-prob)*100*2))
            Ndeal(['a','b'],Con_AB)
        end      
        
        function stats= statistic_test_norm(obj,prob, t_mean,  e_mean, t_sigma)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            Statistic = abs(t_mean-e_mean)/t_sigma; 
            Con_ab=norminv([1-prob,prob]);
            
            maxplot=max([Con_ab(1),Con_ab(2),Statistic])+3;
            minplot=min([Con_ab(1),Con_ab(2),Statistic])-3;
            x=linspace(minplot,maxplot);
            
            obj.plot_dis(x,normpdf(x),Statistic,Con_ab, "Norm")
            disp(sprintf('Test Statistic: %.2f ,Critical value=[%.2f,%.2f]',Statistic,Con_ab(1),Con_ab(2)))
            if Statistic<=Con_ab(1)  % x_bar1<=Con_AB
                disp(sprintf('1.Reject the null hypothesis H0: Same'))
                disp(sprintf('1.Reject HC: Significant bigger with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HA: Significant Smaller with S=%.2f%%',(prob)*100))
                disp(sprintf('2,Choose hypothesis HB: Significant difference with S=%.2f%%',(2*prob-1)*100))
            elseif Statistic>=Con_ab(2)
                disp(sprintf('1,Reject the null hypothesis H0: Same'))
                disp(sprintf('1,Reject HC: Significant smaller with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HA: Significant Bigger with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HB: Significant difference with S=%.2f%%',(2*prob-1)*100))
            else
                disp('Fails to reject the null hypothesis H0') 
            end
            stats=Statistic;

        end      
        
        function stats=statistic_test_t(obj,prob, t_mean,  e_mean, e_sigma, dof)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            Statistic = abs(t_mean-e_mean)/e_sigma; 
            Con_ab=tinv([1-prob,prob],dof);
            
            stats=Statistic;
            
            maxplot=max([Con_ab(1),Con_ab(2),Statistic])+3;
            minplot=min([Con_ab(1),Con_ab(2),Statistic])-3;
            x=linspace(minplot,maxplot);
            
            obj.plot_dis(x,tpdf(x,dof),Statistic,Con_ab, "T")
            disp(sprintf('Test Statistic: %.2f ,Critical value=[%.2f,%.2f]',Statistic,Con_ab(1),Con_ab(2)))
            if Statistic<=Con_ab(1)  % x_bar1<=Con_AB
                disp(sprintf('1.Reject the null hypothesis H0: Same'))
                disp(sprintf('1.Reject HC: Significant bigger with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HA: Significant Smaller with S=%.2f%%',(prob)*100))
                disp(sprintf('2,Choose hypothesis HB: Significant difference with S=%.2f%%',(2*prob-1)*100))
            elseif Statistic>=Con_ab(2)
                disp(sprintf('1,Reject the null hypothesis H0: Same'))
                disp(sprintf('1,Reject HC: Significant smaller with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HA: Significant Bigger with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HB: Significant difference with S=%.2f%%',(2*prob-1)*100))
            else
                disp('Fails to reject the null hypothesis H0') 
            end

        end      
        
        function stats=statistic_test_chi(obj,prob, t_sigma, e_sigma, dof)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            Statistic=(dof*e_sigma^2)/t_sigma^2;
            Con_ab=chi2inv([1-prob,prob],dof);
            
            maxplot=max([Con_ab(1),Con_ab(2),Statistic])+3;
            minplot=min([Con_ab(1),Con_ab(2),Statistic])-3;
            x=linspace(minplot,maxplot);
            
            obj.plot_dis(x,chi2pdf(x,dof),Statistic,Con_ab, "Chi")
            
            disp(sprintf('Test Statistic: %.2f ,Critical value=[%.2f,%.2f]',Statistic,Con_ab(1),Con_ab(2)))
            if Statistic<=Con_ab(1)  % x_bar1<=Con_AB
                disp(sprintf('1.Reject the null hypothesis H0: Same'))
                disp(sprintf('1.Reject HC: Significant bigger with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HA: Significant Smaller with S=%.2f%%',(prob)*100))
                disp(sprintf('2,Choose hypothesis HB: Significant difference with S=%.2f%%',(2*prob-1)*100))
            elseif Statistic>=Con_ab(2)
                disp(sprintf('1,Reject the null hypothesis H0: Same'))
                disp(sprintf('1,Reject HC: Significant smaller with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HA: Significant Bigger with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HB: Significant difference with S=%.2f%%',(2*prob-1)*100))
            else
                disp('Fails to reject the null hypothesis H0') 
            end
            stats=Statistic;

        end      
        
        function stats=statistic_test_f(obj,prob, t_sigma1, t_sigma2,  e_sigma1, e_sigma2, dof1,dof2)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
             
            Statistic = e_sigma1^2/e_sigma2^2;
            Con_ab=finv([1-prob,prob],dof1,dof2); 
            
            maxplot=max([Con_ab(1),Con_ab(2),Statistic])+3;
            minplot=min([Con_ab(1),Con_ab(2),Statistic])-3;
            x=linspace(minplot,maxplot);
            
            obj.plot_dis(x,fpdf(x,dof1,dof2),Statistic,Con_ab, "F_Distribution")
            %disp(sprintf("One Side: The confidence Level = %.2f%%, Error probability = %.2f%%",(prob)*100,(1-prob)*100))
            %disp(sprintf("Two Side: The confidence Level = %.2f%%, Error probability = %.2f%%",(2*prob-1)*100,(1-prob)*100*2))
            disp(sprintf('Test Statistic (s2/s1)^2: %.2f ,Critical value=[%.2f,%.2f]',Statistic,Con_ab(1),Con_ab(2)))
            if Statistic<=Con_ab(1)  % x_bar1<=Con_AB
                disp(sprintf('1.Reject the null hypothesis H0: Same'))
                disp(sprintf('1.Reject HC: Significant bigger with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HA: Significant Smaller with S=%.2f%%',(prob)*100))
                disp(sprintf('2,Choose hypothesis HB: Significant difference with S=%.2f%%',(2*prob-1)*100))
            elseif Statistic>=Con_ab(2)
                disp(sprintf('1,Reject the null hypothesis H0: Same'))
                disp(sprintf('1,Reject HC: Significant smaller with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HA: Significant Bigger with S=%.2f%%',(prob)*100))
                disp(sprintf('2.Choose hypothesis HB: Significant difference with S=%.2f%%',(2*prob-1)*100))
            else
                disp('Fails to reject the null hypothesis H0') 
            end
            stats=Statistic;

        end  
   
        function plot_dis(obj,x,y,stats,Con_ab, name)
            figure
            plot(x,y)
            title(name)
            xlabel("theoretic stats")
            ylabel("pdf")
            % Plot the x^2 - distribution 
            xline(stats,'-',{sprintf("Stats(%.2f)",stats)},LineWidth=2);
            xline(Con_ab(1),':',{'a'});
            xline(Con_ab(2),':',{'b'});
        end  
        
        function [xbar,s,f]=mean_s_dof(obj,x)
            f = length(x)-1;
            s = std(x);
            xbar= mean(x);
        end     
    end
end

