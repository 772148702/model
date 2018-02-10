%CA����ͳ��
data=xlsread('ProblemCData.xlsx');
num=data(:,2);
for i=1:50
    year(i)=1959+i;
end
%������������������AVTCB
oilplane=num(3282-1+50:3331-1+50);

%����������BMTCB
creature=num(4721+50:4770+50);
%ú̿����������CLTCB
coal=num(11881+50:11930+50);
%���ȼ��������������DFTCB
oilniu=num(17761+50:17810+50);
%ȼ���Ҵ�����ȥ���Լ���EMTCB
yichun=num(23441+50:23490+50);
%��ʯȼ�ϣ�FFTCB
huashi=num(29441+50:29490+50);

%�����ܣ�GETCB
dire=num(33093+50:33142+50);

%ˮ�磬HYTCB
water=num(35173+50:35222+50);

%����ȼ�ϣ�JFTCB
jat=num(36853+50:36902+50);

%ʯ����������ȼ������������JNTCB
oiljat=num(39493+50:39542+50);
%ú�ͣ�KSTCB
meiyou=num(42053+50:42102+50);
%Һ��ʯ������LGTCB
yehuaoil=num(46693+50:46742+50);
%����ϵͳ������ʧ��LOTCB
loste=num(48933+50:48982+50);
%���ͣ�LUTCB
runhua=num(50773+50:50822+50);

%�������ͣ�MGTCB
oilcar=num(54773+50:54822+50);
%��ҵ�������ĵ�����ʯ�Ͳ�Ʒ��MSICB
zhaxiang=num(56413+50:56462+50);
%��ҵ�������ĵ���Ȼ���͡�NAICB
tianranqiyou=num(57133+50:57182+50);
%��Ȼ������������������������ȼ�ϣ���NGTCB
tianranqi1=num(63053+50:63102+50);
%��Ȼ��������������������������ȼ�ϣ���NNTCB
tianranqi2=num(66293+50:66342+50);
%�˵������ĵ�����NUETB
hedian=num(67213+50:67262+50);
%����͵�·ʯ�͡��������͡�ú�͡����ͺ͡�����ʯ�Ͳ�Ʒ��������������P1TCB
oiltot=num(68654-1+50:68703-1+50);
%ʯ�Ͳ�Ʒ����������PATCB
oilpro=num(74254-1+50:74303-1+50);

%ʯ�ͽ�����������PCTCB
oiljiao=num(78213+50:78262+50);
%��������Դ�����ѡ�RETCB
reborn=num(84533+50:84582+50);
%ʣ��ȼ��������������RFTCB
shenyuoil=num(87933+50:87982+50);
%ȼ���Ҵ�����Ŀ�������Դ������ROPRB
rebornyichun=num(89373+50:89422+50);
%��������ȼ�ϵ�����������SFTCB    30��
buchongqiti=num(90053+30:90083+30);
%�����̫�������������ġ�SOTCB
sun=num(91893+50:91942+50);
%��Դ����������TETCB
total=num(95253+50:95302+50);
%һ����Դ�͵�������������TNSCB  40��
onetotal=num(97585+40:97624+40);
%����WYTCB
wind=num(105545+50:105594+50);

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
CA(:,1)=year;
CA(:,2)=oiltot;
CA(:,3)=creature;
CA(:,4)=coal;
CA(:,5)=dire;
CA(:,6)=water;
CA(:,7)=sun;
CA(:,8)=tianranqi1;
CA(:,9)=wind;
xlswrite('Energy.xlsx',CA,'CA');