function [origin_bits] = BitPlanes_Rearrange(Plane,Block_size,type)
% ����˵��������BMPR�㷨������λƽ�����Plane
% ���룺Plane��λƽ�����,Block_size���ֿ��С��,type�������з�ʽ��
% �����origin_bits��������֮���λƽ���������

[row,col] = size(Plane);
m = floor(row/Block_size); 
n = floor(col/Block_size);
origin_bits = zeros();
num = 0; 
%-------------------�ֿ��ڰ��б������ֿ�䰴�б�������-�У�------------------%
if type==0 
    for i=1:m  
        for j=1:n
            begin_x = (i-1)*Block_size+1; 
            begin_y = (j-1)*Block_size+1;
            end_x = i*Block_size; 
            end_y = j*Block_size;
            for x=begin_x:end_x  
                for y=begin_y:end_y
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end 
        end
        if col-n*Block_size>=1  
            begin_y = n*Block_size+1;
            end_y = col;
            for x=begin_x:end_x  
                for y=begin_y:end_y
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end
        end  
    end
    if row-m*Block_size>=1
        begin_x = m*Block_size+1; 
        end_x = row;
        for j=1:n
            begin_y = (j-1)*Block_size+1;
            end_y = j*Block_size;
            for x=begin_x:end_x 
                for y=begin_y:end_y
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end  
        end  
    end
    if row-m*Block_size>=1 && col-n*Block_size>=1 
        begin_x = m*Block_size+1;
        begin_y = n*Block_size+1;
        end_x = row;
        end_y = col;
        for x=begin_x:end_x  
            for y=begin_y:end_y
                num = num+1;
                origin_bits(num) = Plane(x,y);
            end
        end  
    end
%-------------------�ֿ��ڰ��б������ֿ�䰴�б�������-�У�------------------%
elseif type==1 
    for j=1:n  
        for i=1:m
            begin_x = (i-1)*Block_size+1; 
            begin_y = (j-1)*Block_size+1;
            end_x = i*Block_size; 
            end_y = j*Block_size;
            for x=begin_x:end_x  
                for y=begin_y:end_y
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end 
        end
        if row-m*Block_size>=1  
            begin_x = m*Block_size+1;
            end_x = row;
            for x=begin_x:end_x  
                for y=begin_y:end_y
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end
        end  
    end
    if col-n*Block_size>=1 
        begin_y = n*Block_size+1; 
        end_y = col;
        for i=1:m
            begin_x = (i-1)*Block_size+1;
            end_x = i*Block_size;
            for x=begin_x:end_x  
                for y=begin_y:end_y
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end  
        end  
    end
    if row-m*Block_size>=1 && col-n*Block_size>=1 
        begin_x = m*Block_size+1;
        begin_y = n*Block_size+1;
        end_x = row;
        end_y = col;
        for x=begin_x:end_x  
            for y=begin_y:end_y
                num = num+1;
                origin_bits(num) = Plane(x,y);
            end
        end  
    end
%-------------------�ֿ��ڰ��б������ֿ�䰴�б�������-�У�------------------%
elseif type==2
    for i=1:m  
        for j=1:n
            begin_x = (i-1)*Block_size+1; 
            begin_y = (j-1)*Block_size+1;
            end_x = i*Block_size; 
            end_y = j*Block_size; 
            for y=begin_y:end_y 
                for x=begin_x:end_x  
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end 
        end
        if col-n*Block_size>=1 
            begin_y = n*Block_size+1;
            end_y = col;
            for y=begin_y:end_y
                for x=begin_x:end_x  
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end 
        end  
    end
    if row-m*Block_size>=1 
        begin_x = m*Block_size+1; 
        end_x = row;
        for j=1:n
            begin_y = (j-1)*Block_size+1;
            end_y = j*Block_size;
            for y=begin_y:end_y 
                for x=begin_x:end_x  
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end   
        end  
    end
    if row-m*Block_size>=1 && col-n*Block_size>=1 
        begin_x = m*Block_size+1;
        begin_y = n*Block_size+1;
        end_x = row;
        end_y = col;
        for y=begin_y:end_y  
            for x=begin_x:end_x  
                num = num+1;
                origin_bits(num) = Plane(x,y);
            end
        end   
    end
%-------------------�ֿ��ڰ��б������ֿ�䰴�б�������-�У�------------------%
else 
    for j=1:n  
        for i=1:m
            begin_x = (i-1)*Block_size+1;
            begin_y = (j-1)*Block_size+1;
            end_x = i*Block_size; 
            end_y = j*Block_size;
            for y=begin_y:end_y 
                for x=begin_x:end_x  
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end  
        end
        if row-m*Block_size>=1  
            begin_x = m*Block_size+1;
            end_x = row;
            for y=begin_y:end_y 
                for x=begin_x:end_x  
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end
        end  
    end
    if col-n*Block_size>=1 
        begin_y = n*Block_size+1; 
        end_y = col;
        for i=1:m
            begin_x = (i-1)*Block_size+1;
            end_x = i*Block_size;
            for y=begin_y:end_y  
                for x=begin_x:end_x  
                    num = num+1;
                    origin_bits(num) = Plane(x,y);
                end
            end  
        end  
    end
    if row-m*Block_size>=1 && col-n*Block_size>=1 
        begin_x = m*Block_size+1;
        begin_y = n*Block_size+1;
        end_x = row;
        end_y = col;
        for y=begin_y:end_y 
            for x=begin_x:end_x  
                num = num+1;
                origin_bits(num) = Plane(x,y);
            end
        end  
    end 
end