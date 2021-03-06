%TX数据统计
data=xlsread('ProblemCData.xlsx');
num=data(:,2);
for i=1:50
    year(i)=1959+i;
end
%航空汽油总消费量，AVTCB
oilplane=num(3282-1+150:3331-1+150);

%总生物量，BMTCB
creature=num(4721+150:4770+150);
%煤炭总消费量，CLTCB
coal=num(11881+150:11930+150);
%馏分燃料油总消费量，DFTCB
oilniu=num(17761+150:17810+150);
%燃料乙醇，除去变性剂，EMTCB
yichun=num(23441+150:23490+150);
%化石燃料，FFTCB
huashi=num(29441+150:29490+150);

%地热能，GETCB
dire=num(33093+150:33142+150);

%水电，HYTCB
water=num(35173+150:35222+150);

%喷气燃料，JFTCB
jat=num(36853+150:36902+150);

%石脑油型喷气燃料总消耗量，JNTCB
oiljat=num(39493+150:39542+150);
%煤油，KSTCB
meiyou=num(42053+150:42102+150);
%液化石油气，LGTCB
yehuaoil=num(46693+150:46742+150);
%电力系统能量损失，LOTCB
loste=num(48933+150:48982+150);
%润滑油，LUTCB
runhua=num(50773+150:50822+150);

%车用汽油，MGTCB
oilcar=num(54773+150:54822+150);
%工业部门消耗的杂项石油产品。MSICB
zhaxiang=num(56413+150:56462+150);
%工业部门消耗的天然汽油。NAICB
tianranqiyou=num(57133+150:57182+150);
%天然气总消费量（包括补充气体燃料）。NGTCB
tianranqi1=num(63053+150:63102+150);
%天然气总消费量（不包括补充气体燃料）。NNTCB
tianranqi2=num(66293+150:66342+150);
%核电生产的电力。NUETB
hedian=num(67213+150:67262+150);
%沥青和道路石油、航空汽油、煤油、润滑油和“其他石油产品”的总消费量。P1TCB
oiltot=num(68654-1+150:68703-1+150);
%石油产品总消费量。PATCB
oilpro=num(74254-1+150:74303-1+150);

%石油焦总消费量。PCTCB
oiljiao=num(78213+150:78262+150);
%可再生能源总消费。RETCB
reborn=num(84533+150:84582+150);
%剩余燃料油总消耗量。RFTCB
shenyuoil=num(87933+150:87982+150);
%燃料乙醇以外的可再生能源生产。ROPRB
rebornyichun=num(89373+150:89422+150);
%补充气体燃料的总消耗量。SFTCB    30年
buchongqiti=num(90053+90:90083+90);
%光伏与太阳能热能总消耗。SOTCB
sun=num(91893+150:91942+150);
%能源消费总量。TETCB
total=num(95253+150:95302+150);
%一次能源和电力消费总量。TNSCB  40年
onetotal=num(97585+120:97624+120);
%风能WYTCB
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
legend('石油','生物能','煤炭','地热能','水能','太阳能','天然气','风能');
hold off
%写入excel表格
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