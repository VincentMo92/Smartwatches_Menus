function [va,vb,vc,vd,ve,vf,vg,vh,vi,vj,vk]=process(p,s,m)
%�������ʱ��va,����Ӧ�ô���vb,�˵���ͣ��ʱ��vc,Ӧ����ͣ��ʱ��vd
%�˵�������������ve,�˵��ڷ���������vf,�˵����ܻ�������vg
%Ӧ��������������vh,Ӧ���ڷ���������vi,Ӧ�����ܻ�������vj
%����ɹ���vk

strPath = strcat('P',num2str(p),'_S',num2str(s),'_M',num2str(m),'.csv');
d = csvread(strPath);

x1 = d(:,1);
x2 = d(:,2);
x6 = d(:,6);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�������ʱ��Va �ļ���
a = zeros(5,1);
for n = 1:5
   num1 = 8000;   %800 = ����
   num2 = num1 + n;
   k = 1;
    for i = 1:length(x1)
        %�ҵ�һ������Ŀ�ʼ
        if i > k
            if x1(i) == num2
                for j = (i+1):length(x1)
                    %�ҵ���һ������һ�µ�����
                    if x1(j) == num2
                        time1 = x6(i+1);
                        time2 = x6(j-1);
                        time = time2 - time1;
                        if abs(time) >= 500
                            time = 15;
                        end
                        a(n) = time;
                        k = j;
                        break;
                    end                
                end
            end
        end
    end
end
va = mean(a);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%����Ӧ�ø��� Vb �ļ���
enterAppNum = 0;
for i = 1:length(x1)
    if x2(i) == 0 && x1(i) ~= 0 && x1(i) ~= 7000 %7000 = ���˵�
        enterAppNum = enterAppNum + 1;
    end  
end
vb = enterAppNum;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�ڲ˵���Ӧ���е�ͣ��ʱ��Vc, Vd �ļ���
point1 = zeros(length(x1),1);
point2 = zeros(length(x1),1);
for i = 1:length(x1)
    %�жϵ�ǰ���ڲ˵�����Ӧ����.1Ϊ�ڲ˵���,2Ϊ��Ӧ����
    if x2(i) ~= 0 && i > 1
            point1(i) = point1(i-1);   
    else if x2(i) == 0 && x1(i) == 7000;
            point1(i) = 1;
        else if x2(i) == 0 && x1(i) ~= 7000;
                point1(i) = 2; 
            end
        end 
    end
    %�ж��Ƿ���������.1Ϊ�ڣ�0Ϊ����
    if (x2(i) ~= 998 && x2(i) ~= 999) && i > 1
        point2(i) = point2(i-1);
    else if x2(i) == 998;
            point2(i) = 1;
        else if x2(i) ==999;
                point2(i) = 0;
            end
        end
    end
end

%���������У��ڲ˵���Ӧ�����ͣ��ʱ��
timeMenu = 0;
timeApp = 0;
k = 1;
for i = 1:length(x1)
    if i >= k %����һ��λ�ÿ�ʼ
        %������ʼʱ
        if point2(i) == 1 && point1(i) ~= 0 && x2(i) == 998; 
            timeStart = x6(i+1);
            for j = i:length(x1)-1 
                if x2(j+1) == 999 || point1(j) ~= point1(j-1)
                    timeEnd = x6(j);
                    k = j;
                    break;
                end
            end
            time = timeEnd - timeStart;
            if abs(time) > 500
                time = 10;
            end
            %�ж��ǲ˵��е�ͣ��������Ӧ���е�ͣ��
            if point1(i) == 1;
                timeMenu = timeMenu + time;
            else if point1(i) == 2;
                    timeApp = timeApp + time;
                end
            end
        end
        %�ӽ���˵���Ӧ��ʱ
        if i >= 2
            if point2(i) == 1 && point1(i) ~= point1(i-1); 
                timeStart = x6(i);
                for j = i:length(x1)-1 
                    if x2(j+1) == 999
                        timeEnd = x6(j);
                        k = j;
                        break;
                    end
                    if point1(j) ~= point1(j+1)
                        timeEnd = x6(j-1);
                        k = j;
                        break;
                    end
                end
                time = timeEnd - timeStart;
                if abs(time) > 500
                    time = 10;
                end
                %�ж��ǲ˵��е�ͣ��������Ӧ���е�ͣ��
                if point1(i) == 1;
                    timeMenu = timeMenu + time;
                else if point1(i) == 2;
                        timeApp = timeApp + time;
                    end
                end
            end
        end
    end
end
vc = timeMenu;
vd = timeApp;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�˵�������������ve,�˵��ڷ���������vf,�˵����ܻ�������vg �ļ���
%Ӧ��������������vh,Ӧ���ڷ���������vi,Ӧ�����ܻ�������vj �ļ���
swipeLeftNum_Menu = 0;
swipeRightNum_Menu = 0;
swipeLeftNum_App = 0;
swipeRightNum_App = 0;
for i = 1:length(x1)
    if point1(i) == 1 && point2(i) == 1 && x1(i) == +1
        swipeLeftNum_Menu = swipeLeftNum_Menu + 1;
    else if point1(i) == 1 && point2(i) == 1 && x1(i) == -1;
        swipeRightNum_Menu = swipeRightNum_Menu + 1;
    else if point1(i) == 2 && point2(i) == 1 && x1(i) == +1;
        swipeLeftNum_App = swipeLeftNum_App + 1;
    else if point1(i) == 2 && point2(i) == 1 && x1(i) == -1;
        swipeRightNum_App = swipeRightNum_App + 1;
        end
        end
        end
    end
end
ve = swipeLeftNum_Menu;
vf = swipeRightNum_Menu;
vg = ve + vf;
vh = swipeLeftNum_App;
vi = swipeRightNum_App;
vj = vh + vi;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%����ɹ���vk �ļ���

tipNum = 0;
for i = 1:length(x1)
    if point2(i) == 1 && x1(i) == 0
        tipNum = tipNum + 1;
    end
end
vk = vb/tipNum;
