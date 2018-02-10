%AZ数据统计
data=xlsread('ProblemCData.xlsx');
num=data(:,2);
for i=1:50
    year(i)=1959+i;
end
%航空汽油总消费量，AVTCB
oilplane=num(3282-1:3331-1);

%总生物量，BMTCB
creature=num(4721:4770);
%煤炭总消费量，CLTCB
coal=num(11881:11930);
%馏分燃料油总消费量，DFTCB
oilniu=num(17761:17810);
%燃料乙醇，除去变性剂，EMTCB
yichun=num(23441:23490);
%化石燃料，FFTCB
huashi=num(29441:29490);

%地热能，GETCB
dire=num(33093:33142);

%水电，HYTCB
water=num(35173:35222);

%喷气燃料，JFTCB
jat=num(36853:36902);

%石脑油型喷气燃料总消耗量，JNTCB
oiljat=num(39493:39542);
%煤油，KSTCB
meiyou=num(42053:42102);
%液化石油气，LGTCB
yehuaoil=num(46693:46742);
%电力系统能量损失，LOTCB
loste=num(48933:48982);
%润滑油，LUTCB
runhua=num(50773:50822);

%车用汽油，MGTCB
oilcar=num(54773:54822);
%工业部门消耗的杂项石油产品。MSICB
zhaxiang=num(56413:56462);
%工业部门消耗的天然汽油。NAICB
tianranqiyou=num(57133:57182);
%天然气总消费量（包括补充气体燃料）。NGTCB
tianranqi1=num(63053:63102);
%天然气总消费量（不包括补充气体燃料）。NNTCB
tianranqi2=num(66293:66342);
%核电生产的电力。NUETB
hedian=num(67213:67262);
%沥青和道路石油、航空汽油、煤油、润滑油和“其他石油产品”的总消费量。P1TCB
oiltot=num(68654-1:68703-1);
%石油产品总消费量。PATCB
oilpro=num(74254-1:74303-1);

%石油焦总消费量。PCTCB
oiljiao=num(78213:78262);
%可再生能源总消费。RETCB
reborn=num(84533:84582);
%剩余燃料油总消耗量。RFTCB
shenyuoil=num(87933:87982);
%燃料乙醇以外的可再生能源生产。ROPRB
rebornyichun=num(89373:89422);
%补充气体燃料的总消耗量。SFTCB    30年
buchongqiti=num(90053:90083);
%光伏与太阳能热能总消耗。SOTCB
sun=num(91893:91942);
%能源消费总量。TETXB
total=num(96265:96314);
%一次能源和电力消费总量。TNSCB  40年
onetotal=num(97585:97624);


hold on
plot(year,oiltot,'g');
plot(year,creature,'b');
plot(year,coal,'y');
plot(year,dire,'r');
plot(year,water,'m');
plot(year,sun,'c');
plot(year,tianranqi1,'k');
legend('石油','生物能','煤炭','地热能','水能','太阳能','天然气');
hold off