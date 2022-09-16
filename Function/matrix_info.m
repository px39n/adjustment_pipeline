classdef matrix_info
    %MATRIX_INFO Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        rank
        def
        N
        det
        eigvec
        eigval
        N_minus
    end
    
    
    
    methods
        function obj = matrix_info(A)
            %MATRIX_INFO Construct an instance of this class
            %   Detailed explanation goes here
            obj.rank = rank(A);
            obj.def=length(A)-obj.rank;
            obj.N=A'*A;
            obj.det=det(obj.N);
            [eigvec,eigval] = eig(obj.N);
            obj.eigvec=eigvec;
            obj.eigval=eigval;
            obj.N_minus=pinv(A);
        end
        
        function [Q11_2] = N_plus(obj,A)
            %METHOD1 g-inverse
            %   Detailed explanation goes here
            N=obj.N;
            vv=[obj.eigvec(:,1:obj.def)];
            Next2=[N, vv; vv' zeros(obj.def,obj.def)];
            next2_inv=inv(Next2);
            Q11_2=next2_inv(1:length(N),1:length(N));
            t2=trace(Q11_2);
        end 
        %deal(obj.rank,obj.def,obj.N,obj.det,obj.eigvec,obj.eigval,obj.N_minus);

        
        function [rank,def,N,det,eigvec,eigval,N_minus] = Get_All(obj)
            %METHOD1 g-inverse
            %   Detailed explanation goes here
            [rank,def,N,det,eigvec,eigval,N_minus]=deal(obj.rank,obj.def,obj.N,obj.det,obj.eigvec,obj.eigval,obj.N_minus);

        end  
        
    end
end

