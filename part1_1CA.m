%CA数据统计
data=xlsread('ProblemCData.xlsx');
num=data(:,2);
for i=1:50
    year(i)=1959+i;
end
%航空汽油总消费量，AVTCB
oilplane=num(3282-1+50:3331-1+50);

%总生物量，BMTCB
creature=num(4721+50:4770+50);
%煤炭总消费量，CLTCB
coal=num(11881+50:11930+50);
%馏分燃料油总消费量，DFTCB
oilniu=num(17761+50:17810+50);
%燃料乙醇，除去变性剂，EMTCB
yichun=num(23441+50:23490+50);
%化石燃料，FFTCB
huashi=num(29441+50:29490+50);

%地热能，GETCB
dire=num(33093+50:33142+50);

%水电，HYTCB
water=num(35173+50:35222+50);

%喷气燃料，JFTCB
jat=num(36853+50:36902+50);

%石脑油型喷气燃料总消耗量，JNTCB
oiljat=num(39493+50:39542+50);
%煤油，KSTCB
meiyou=num(42053+50:42102+50);
%液化石油气，LGTCB
yehuaoil=num(46693+50:46742+50);
%电力系统能量损失，LOTCB
loste=num(48933+50:48982+50);
%润滑油，LUTCB
runhua=num(50773+50:50822+50);

%车用汽油，MGTCB
oilcar=num(54773+50:54822+50);
%工业部门消耗的杂项石油产品。MSICB
zhaxiang=num(56413+50:56462+50);
%工业部门消耗的天然汽油。NAICB
tianranqiyou=num(57133+50:57182+50);
%天然气总消费量（包括补充气体燃料）。NGTCB
tianranqi1=num(63053+50:63102+50);
%天然气总消费量（不包括补充气体燃料）。NNTCB
tianranqi2=num(66293+50:66342+50);
%核电生产的电力。NUETB
hedian=num(67213+50:67262+50);
%沥青和道路石油、航空汽油、煤油、润滑油和“其他石油产品”的总消费量。P1TCB
oiltot=num(68654-1+50:68703-1+50);
%石油产品总消费量。PATCB
oilpro=num(74254-1+50:74303-1+50);

%石油焦总消费量。PCTCB
oiljiao=num(78213+50:78262+50);
%可再生能源总消费。RETCB
reborn=num(84533+50:84582+50);
%剩余燃料油总消耗量。RFTCB
shenyuoil=num(87933+50:87982+50);
%燃料乙醇以外的可再生能源生产。ROPRB
rebornyichun=num(89373+50:89422+50);
%补充气体燃料的总消耗量。SFTCB    30年
buchongqiti=num(90053+30:90083+30);
%光伏与太阳能热能总消耗。SOTCB
sun=num(91893+50:91942+50);
%能源消费总量。TETCB
total=num(95253+50:95302+50);
%一次能源和电力消费总量。TNSCB  40年
onetotal=num(97585+40:97624+40);
%风能WYTCB
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
legend('石油','生物能','煤炭','地热能','水能','太阳能','天然气','风能');
hold off

%写入excel表格
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