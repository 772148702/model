%NM数据统计
data=xlsread('ProblemCData.xlsx');
num=data(:,2);
for i=1:50
    year(i)=1959+i;
end
%航空汽油总消费量，AVTCB
oilplane=num(3282-1+100:3331-1+100);

%总生物量，BMTCB
creature=num(4721+100:4770+100);
%煤炭总消费量，CLTCB
coal=num(11881+100:11930+100);
%馏分燃料油总消费量，DFTCB
oilniu=num(17761+100:17810+100);
%燃料乙醇，除去变性剂，EMTCB
yichun=num(23441+100:23490+100);
%化石燃料，FFTCB
huashi=num(29441+100:29490+100);

%地热能，GETCB
dire=num(33093+100:33142+100);

%水电，HYTCB
water=num(35173+100:35222+100);

%喷气燃料，JFTCB
jat=num(36853+100:36902+100);

%石脑油型喷气燃料总消耗量，JNTCB
oiljat=num(39493+100:39542+100);
%煤油，KSTCB
meiyou=num(42053+100:42102+100);
%液化石油气，LGTCB
yehuaoil=num(46693+100:46742+100);
%电力系统能量损失，LOTCB
loste=num(48933+100:48982+100);
%润滑油，LUTCB
runhua=num(50773+100:50822+100);

%车用汽油，MGTCB
oilcar=num(54773+100:54822+100);
%工业部门消耗的杂项石油产品。MSICB
zhaxiang=num(56413+100:56462+100);
%工业部门消耗的天然汽油。NAICB
tianranqiyou=num(57133+100:57182+100);
%天然气总消费量（包括补充气体燃料）。NGTCB
tianranqi1=num(63053+100:63102+100);
%天然气总消费量（不包括补充气体燃料）。NNTCB
tianranqi2=num(66293+100:66342+100);
%核电生产的电力。NUETB
hedian=num(67213+100:67262+100);
%沥青和道路石油、航空汽油、煤油、润滑油和“其他石油产品”的总消费量。P1TCB
oiltot=num(68654-1+100:68703-1+100);
%石油产品总消费量。PATCB
oilpro=num(74254-1+100:74303-1+100);

%石油焦总消费量。PCTCB
oiljiao=num(78213+100:78262+100);
%可再生能源总消费。RETCB
reborn=num(84533+100:84582+100);
%剩余燃料油总消耗量。RFTCB
shenyuoil=num(87933+100:87982+100);
%燃料乙醇以外的可再生能源生产。ROPRB
rebornyichun=num(89373+100:89422+100);
%补充气体燃料的总消耗量。SFTCB    30年
buchongqiti=num(90053+60:90083+60);
%光伏与太阳能热能总消耗。SOTCB
sun=num(91893+100:91942+100);
%能源消费总量。TETCB
total=num(95253+100:95302+100);
%一次能源和电力消费总量。TNSCB  40年
onetotal=num(97585+80:97624+80);
%风能WYTCB
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
legend('石油','生物能','煤炭','地热能','水能','太阳能','天然气','风能');
hold off
%写入excel表格
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