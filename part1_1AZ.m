%AZ����ͳ��
data=xlsread('ProblemCData.xlsx');
num=data(:,2);
for i=1:50
    year(i)=1959+i;
end
%������������������AVTCB
oilplane=num(3282-1:3331-1);

%����������BMTCB
creature=num(4721:4770);
%ú̿����������CLTCB
coal=num(11881:11930);
%���ȼ��������������DFTCB
oilniu=num(17761:17810);
%ȼ���Ҵ�����ȥ���Լ���EMTCB
yichun=num(23441:23490);
%��ʯȼ�ϣ�FFTCB
huashi=num(29441:29490);

%�����ܣ�GETCB
dire=num(33093:33142);

%ˮ�磬HYTCB
water=num(35173:35222);

%����ȼ�ϣ�JFTCB
jat=num(36853:36902);

%ʯ����������ȼ������������JNTCB
oiljat=num(39493:39542);
%ú�ͣ�KSTCB
meiyou=num(42053:42102);
%Һ��ʯ������LGTCB
yehuaoil=num(46693:46742);
%����ϵͳ������ʧ��LOTCB
loste=num(48933:48982);
%���ͣ�LUTCB
runhua=num(50773:50822);

%�������ͣ�MGTCB
oilcar=num(54773:54822);
%��ҵ�������ĵ�����ʯ�Ͳ�Ʒ��MSICB
zhaxiang=num(56413:56462);
%��ҵ�������ĵ���Ȼ���͡�NAICB
tianranqiyou=num(57133:57182);
%��Ȼ������������������������ȼ�ϣ���NGTCB
tianranqi1=num(63053:63102);
%��Ȼ��������������������������ȼ�ϣ���NNTCB
tianranqi2=num(66293:66342);
%�˵������ĵ�����NUETB
hedian=num(67213:67262);
%����͵�·ʯ�͡��������͡�ú�͡����ͺ͡�����ʯ�Ͳ�Ʒ��������������P1TCB
oiltot=num(68654-1:68703-1);
%ʯ�Ͳ�Ʒ����������PATCB
oilpro=num(74254-1:74303-1);

%ʯ�ͽ�����������PCTCB
oiljiao=num(78213:78262);
%��������Դ�����ѡ�RETCB
reborn=num(84533:84582);
%ʣ��ȼ��������������RFTCB
shenyuoil=num(87933:87982);
%ȼ���Ҵ�����Ŀ�������Դ������ROPRB
rebornyichun=num(89373:89422);
%��������ȼ�ϵ�����������SFTCB    30��
buchongqiti=num(90053:90083);
%�����̫�������������ġ�SOTCB
sun=num(91893:91942);
%��Դ����������TETXB
total=num(96265:96314);
%һ����Դ�͵�������������TNSCB  40��
onetotal=num(97585:97624);


hold on
plot(year,oiltot,'g');
plot(year,creature,'b');
plot(year,coal,'y');
plot(year,dire,'r');
plot(year,water,'m');
plot(year,sun,'c');
plot(year,tianranqi1,'k');
legend('ʯ��','������','ú̿','������','ˮ��','̫����','��Ȼ��');
hold off