%TX����ͳ��
data=xlsread('ProblemCData.xlsx');
num=data(:,2);
for i=1:50
    year(i)=1959+i;
end
%������������������AVTCB
oilplane=num(3282-1+150:3331-1+150);

%����������BMTCB
creature=num(4721+150:4770+150);
%ú̿����������CLTCB
coal=num(11881+150:11930+150);
%���ȼ��������������DFTCB
oilniu=num(17761+150:17810+150);
%ȼ���Ҵ�����ȥ���Լ���EMTCB
yichun=num(23441+150:23490+150);
%��ʯȼ�ϣ�FFTCB
huashi=num(29441+150:29490+150);

%�����ܣ�GETCB
dire=num(33093+150:33142+150);

%ˮ�磬HYTCB
water=num(35173+150:35222+150);

%����ȼ�ϣ�JFTCB
jat=num(36853+150:36902+150);

%ʯ����������ȼ������������JNTCB
oiljat=num(39493+150:39542+150);
%ú�ͣ�KSTCB
meiyou=num(42053+150:42102+150);
%Һ��ʯ������LGTCB
yehuaoil=num(46693+150:46742+150);
%����ϵͳ������ʧ��LOTCB
loste=num(48933+150:48982+150);
%���ͣ�LUTCB
runhua=num(50773+150:50822+150);

%�������ͣ�MGTCB
oilcar=num(54773+150:54822+150);
%��ҵ�������ĵ�����ʯ�Ͳ�Ʒ��MSICB
zhaxiang=num(56413+150:56462+150);
%��ҵ�������ĵ���Ȼ���͡�NAICB
tianranqiyou=num(57133+150:57182+150);
%��Ȼ������������������������ȼ�ϣ���NGTCB
tianranqi1=num(63053+150:63102+150);
%��Ȼ��������������������������ȼ�ϣ���NNTCB
tianranqi2=num(66293+150:66342+150);
%�˵������ĵ�����NUETB
hedian=num(67213+150:67262+150);
%����͵�·ʯ�͡��������͡�ú�͡����ͺ͡�����ʯ�Ͳ�Ʒ��������������P1TCB
oiltot=num(68654-1+150:68703-1+150);
%ʯ�Ͳ�Ʒ����������PATCB
oilpro=num(74254-1+150:74303-1+150);

%ʯ�ͽ�����������PCTCB
oiljiao=num(78213+150:78262+150);
%��������Դ�����ѡ�RETCB
reborn=num(84533+150:84582+150);
%ʣ��ȼ��������������RFTCB
shenyuoil=num(87933+150:87982+150);
%ȼ���Ҵ�����Ŀ�������Դ������ROPRB
rebornyichun=num(89373+150:89422+150);
%��������ȼ�ϵ�����������SFTCB    30��
buchongqiti=num(90053+90:90083+90);
%�����̫�������������ġ�SOTCB
sun=num(91893+150:91942+150);
%��Դ����������TETCB
total=num(95253+150:95302+150);
%һ����Դ�͵�������������TNSCB  40��
onetotal=num(97585+120:97624+120);
%����WYTCB
wind=num(105545+150:105594+150);

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
TX(:,1)=year;
TX(:,2)=oiltot;
TX(:,3)=creature;
TX(:,4)=coal;
TX(:,5)=dire;
TX(:,6)=water;
TX(:,7)=sun;
TX(:,8)=tianranqi1;
TX(:,9)=wind;
xlswrite('Energy.xlsx',TX,'TX');