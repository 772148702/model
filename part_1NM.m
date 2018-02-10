%NM����ͳ��
data=xlsread('ProblemCData.xlsx');
num=data(:,2);
for i=1:50
    year(i)=1959+i;
end
%������������������AVTCB
oilplane=num(3282-1+100:3331-1+100);

%����������BMTCB
creature=num(4721+100:4770+100);
%ú̿����������CLTCB
coal=num(11881+100:11930+100);
%���ȼ��������������DFTCB
oilniu=num(17761+100:17810+100);
%ȼ���Ҵ�����ȥ���Լ���EMTCB
yichun=num(23441+100:23490+100);
%��ʯȼ�ϣ�FFTCB
huashi=num(29441+100:29490+100);

%�����ܣ�GETCB
dire=num(33093+100:33142+100);

%ˮ�磬HYTCB
water=num(35173+100:35222+100);

%����ȼ�ϣ�JFTCB
jat=num(36853+100:36902+100);

%ʯ����������ȼ������������JNTCB
oiljat=num(39493+100:39542+100);
%ú�ͣ�KSTCB
meiyou=num(42053+100:42102+100);
%Һ��ʯ������LGTCB
yehuaoil=num(46693+100:46742+100);
%����ϵͳ������ʧ��LOTCB
loste=num(48933+100:48982+100);
%���ͣ�LUTCB
runhua=num(50773+100:50822+100);

%�������ͣ�MGTCB
oilcar=num(54773+100:54822+100);
%��ҵ�������ĵ�����ʯ�Ͳ�Ʒ��MSICB
zhaxiang=num(56413+100:56462+100);
%��ҵ�������ĵ���Ȼ���͡�NAICB
tianranqiyou=num(57133+100:57182+100);
%��Ȼ������������������������ȼ�ϣ���NGTCB
tianranqi1=num(63053+100:63102+100);
%��Ȼ��������������������������ȼ�ϣ���NNTCB
tianranqi2=num(66293+100:66342+100);
%�˵������ĵ�����NUETB
hedian=num(67213+100:67262+100);
%����͵�·ʯ�͡��������͡�ú�͡����ͺ͡�����ʯ�Ͳ�Ʒ��������������P1TCB
oiltot=num(68654-1+100:68703-1+100);
%ʯ�Ͳ�Ʒ����������PATCB
oilpro=num(74254-1+100:74303-1+100);

%ʯ�ͽ�����������PCTCB
oiljiao=num(78213+100:78262+100);
%��������Դ�����ѡ�RETCB
reborn=num(84533+100:84582+100);
%ʣ��ȼ��������������RFTCB
shenyuoil=num(87933+100:87982+100);
%ȼ���Ҵ�����Ŀ�������Դ������ROPRB
rebornyichun=num(89373+100:89422+100);
%��������ȼ�ϵ�����������SFTCB    30��
buchongqiti=num(90053+60:90083+60);
%�����̫�������������ġ�SOTCB
sun=num(91893+100:91942+100);
%��Դ����������TETCB
total=num(95253+100:95302+100);
%һ����Դ�͵�������������TNSCB  40��
onetotal=num(97585+80:97624+80);
%����WYTCB
wind=num(105545+100:105594+100);

hold on
plot(year,oiltot,'g');
plot(year,creature,'b');
plot(year,coal,'y');
plot(year,dire,'r');
plot(year,water,'m');
plot(year,sun,'c');
plot(year,tianranqi1,'k');
plot(year,wind,'b.');
legend('ʯ��','������','ú̿','������','ˮ��','̫����','��Ȼ��','����');
hold off
%д��excel���
NM(:,1)=year;
NM(:,2)=oiltot;
NM(:,3)=creature;
NM(:,4)=coal;
NM(:,5)=dire;
NM(:,6)=water;
NM(:,7)=sun;
NM(:,8)=tianranqi1;
NM(:,9)=wind;
xlswrite('Energy.xlsx',NM,'NM');