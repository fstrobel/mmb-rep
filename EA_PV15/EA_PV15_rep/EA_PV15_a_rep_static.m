function [residual, g1, g2] = EA_PV15_a_rep_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                     columns: variables in declaration order
%                                                     rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 103, 1);

%
% Model equations
%

T3 = (-1);
T17 = (1-params(60))/params(34);
T41 = (1-params(61))/params(35);
T87 = (1-params(1)*params(45))*(1-params(45))/params(45);
T111 = (1-params(1)*params(46))*(1-params(46))/params(46);
T177 = (1-params(1)*params(4))*(1-params(4))/params(4);
T198 = (1-params(1)*params(5))*(1-params(5))/params(5);
T312 = params(70)/(1-params(70));
T393 = T312*params(72)*params(64)*params(67)/params(49);
T494 = params(89)/(1-params(81));
T660 = (1-params(92))/params(92);
lhs =y(4)-y(4)*(1+params(60))+y(4)*params(60);
rhs =T17*(y(7)-y(11)+y(81)-y(81)-params(56)*params(6)*y(31));
residual(1)= lhs-rhs;
lhs =y(5)-y(5)*(1+params(61))+y(5)*params(61);
rhs =T41*(params(56)*params(6)*y(31)+y(7)-y(12)+y(82)-y(82));
residual(2)= lhs-rhs;
lhs =y(15);
rhs =params(37)*y(17)+params(34)/(1-params(60))*(y(4)-y(4)*params(60));
residual(3)= lhs-rhs;
lhs =y(16);
rhs =params(38)*y(18)+params(35)/(1-params(61))*(y(5)-y(5)*params(61));
residual(4)= lhs-rhs;
lhs =(1+params(1))*y(13);
rhs =y(13)+y(11)*params(43)-y(11)*(1+params(1)*params(43))+params(1)*(y(11)+y(13))+T87*(y(15)-y(13))+y(89);
residual(5)= lhs-rhs;
lhs =(1+params(1))*y(14);
rhs =y(14)+y(12)*params(44)-y(12)*(1+params(1)*params(44))+params(1)*(y(12)+y(14))+T111*(y(16)-y(14))+y(90);
residual(6)= lhs-rhs;
lhs =y(17)+y(13);
rhs =y(26)+y(32);
residual(7)= lhs-rhs;
lhs =y(18)+y(14);
rhs =y(27)+y(33);
residual(8)= lhs-rhs;
lhs =y(32);
rhs =y(21)+y(34);
residual(9)= lhs-rhs;
lhs =y(33);
rhs =y(22)+y(35);
residual(10)= lhs-rhs;
lhs =y(1);
rhs =y(77)+y(32)*params(2)+y(17)*(1-params(2));
residual(11)= lhs-rhs;
lhs =y(2);
rhs =y(78)+y(33)*params(2)+y(18)*(1-params(2));
residual(12)= lhs-rhs;
lhs =y(19);
rhs =y(26)*params(2)+y(13)*(1-params(2))-y(77);
residual(13)= lhs-rhs;
lhs =y(20);
rhs =y(27)*params(2)+y(14)*(1-params(2))-y(78);
residual(14)= lhs-rhs;
lhs =(1+params(1)*params(58))*y(8);
rhs =params(58)*y(8)+params(1)*y(8)+T177*(y(19)+params(48)*y(30));
residual(15)= lhs-rhs;
lhs =(1+params(1)*params(59))*y(9);
rhs =params(59)*y(9)+params(1)*y(9)+T198*(y(20)-params(48)*y(30));
residual(16)= lhs-rhs;
lhs =y(7);
rhs =y(11)+y(45);
residual(17)= lhs-rhs;
lhs =y(7);
rhs =y(12)+y(46);
residual(18)= lhs-rhs;
lhs =y(41);
rhs =y(26)*params(51)/params(66)+(1-params(3))/params(66)*y(28)-y(28)+y(31)*params(6)*params(56)/params(66);
residual(19)= lhs-rhs;
lhs =y(42);
rhs =y(27)*params(51)/params(66)+(1-params(3))/params(66)*y(29)-y(29)-y(31)*params(6)*params(56)/params(66);
residual(20)= lhs-rhs;
residual(21) = y(28)+y(30)*(params(48)-params(47));
residual(22) = y(29)-y(30)*(params(48)-params(47));
lhs =params(3)*y(23);
rhs =y(21)-y(21)*(1-params(3));
residual(23)= lhs-rhs;
lhs =params(3)*y(24);
rhs =y(22)-y(22)*(1-params(3));
residual(24)= lhs-rhs;
lhs =y(26)*(1-params(62))/params(62);
rhs =y(34);
residual(25)= lhs-rhs;
lhs =y(27)*(1-params(63))/params(63);
rhs =y(35);
residual(26)= lhs-rhs;
lhs =params(69)*(y(43)-y(43)*params(82));
rhs =params(54)*(y(21)+y(28))-params(68)*y(39);
residual(27)= lhs-rhs;
lhs =params(69)*(y(44)-y(44)*params(83));
rhs =params(54)*(y(22)+y(29))-params(68)*y(40);
residual(28)= lhs-rhs;
lhs =params(68)*y(39);
rhs =params(65)*params(88)*y(51)-params(68)*y(83);
residual(29)= lhs-rhs;
lhs =params(68)*y(40);
rhs =params(65)*params(88)*y(52)-params(68)*y(84);
residual(30)= lhs-rhs;
lhs =y(51);
rhs =y(21)+y(28)+y(41)+(1-params(72))*(1-params(76))*T312*y(49);
residual(31)= lhs-rhs;
lhs =y(52);
rhs =y(22)+y(29)+y(42)+T312*(1-params(72))*(1-params(77))*y(50);
residual(32)= lhs-rhs;
lhs =y(47);
rhs =y(41)-y(62);
residual(33)= lhs-rhs;
lhs =y(48);
rhs =y(42)-y(63);
residual(34)= lhs-rhs;
lhs =y(47);
rhs =y(49)*params(76)*T312+y(85);
residual(35)= lhs-rhs;
lhs =y(48);
rhs =y(50)*T312*params(77)+y(86);
residual(36)= lhs-rhs;
lhs =y(49);
rhs =y(21)+y(28)-y(39);
residual(37)= lhs-rhs;
lhs =y(50);
rhs =y(22)+y(29)-y(40);
residual(38)= lhs-rhs;
lhs =y(21)+y(28)+y(41)+y(37);
rhs =y(62)+y(43)-params(82)*y(96);
residual(39)= lhs-rhs;
lhs =y(22)+y(29)+y(42)+y(38);
rhs =y(63)+y(44)-params(83)*y(97);
residual(40)= lhs-rhs;
lhs =y(62);
rhs =(1-params(84))*y(58)+params(84)*y(59)+params(84)*(y(12)-y(11));
residual(41)= lhs-rhs;
lhs =y(63);
rhs =(1-params(84))*y(59)+params(84)*y(58)-params(84)*(y(12)-y(11));
residual(42)= lhs-rhs;
lhs =y(53);
rhs =T393*(y(49)*(1-params(76))*(1-params(84))+y(50)*(1-params(77))*params(84))+params(92)*y(73)+y(45)*(1-params(92));
residual(43)= lhs-rhs;
lhs =y(54);
rhs =T393*(y(50)*(1-params(77))*(1-params(84))+y(49)*(1-params(76))*params(84))+params(92)*y(74)+y(46)*(1-params(92));
residual(44)= lhs-rhs;
lhs =y(58)*(1+params(1)*(1+params(39)));
rhs =y(87)+y(11)+params(1)*params(41)*y(94)+(1-params(1)*params(41))*(1-params(41))/params(41)*(y(53)-y(58))+params(1)*y(58)+y(58)*(1+(1+params(1))*params(39))-params(39)*y(98)-y(11)*(1+params(1)*params(41));
residual(45)= lhs-rhs;
lhs =y(59)*(1+params(1)*(1+params(40)));
rhs =y(88)+y(12)+params(1)*params(42)*y(95)+(1-params(1)*params(42))*(1-params(42))/params(42)*(y(54)-y(59))+params(1)*y(59)+y(59)*(1+(1+params(1))*params(40))-params(40)*y(99)-y(12)*(1+params(1)*params(42));
residual(46)= lhs-rhs;
lhs =y(58)-y(45);
rhs =y(60);
residual(47)= lhs-rhs;
lhs =y(59)-y(46);
rhs =y(61);
residual(48)= lhs-rhs;
lhs =T494*y(64);
rhs =params(69)*params(64)*params(67)*(y(58)+(y(49)*(1-params(76))*(1-params(84))+y(50)*(1-params(77))*params(84))*T312*(-params(72))+y(55))-params(49)*params(90)*(y(73)+y(75)-params(93)*y(100));
residual(49)= lhs-rhs;
lhs =T494*y(65);
rhs =params(69)*params(64)*params(67)*(y(59)+(y(50)*(1-params(77))*(1-params(84))+y(49)*(1-params(76))*params(84))*T312*(-params(72))+y(56))-params(49)*params(90)*(y(74)+y(76)-params(94)*y(101));
residual(50)= lhs-rhs;
lhs =params(90)*(y(75)-y(75)*params(93))+params(89)*y(64)+params(91)*y(91);
rhs =params(69)*y(55);
residual(51)= lhs-rhs;
lhs =params(90)*(y(76)-y(76)*params(94))+params(89)*y(65)+params(91)*y(92);
rhs =params(69)*y(56);
residual(52)= lhs-rhs;
lhs =y(66);
rhs =y(75)-y(64);
residual(53)= lhs-rhs;
lhs =y(67);
rhs =y(76)-y(65);
residual(54)= lhs-rhs;
lhs =y(71);
rhs =y(45)+params(90)*params(78)*y(68);
residual(55)= lhs-rhs;
lhs =y(72);
rhs =y(46)+params(90)*params(79)*y(69);
residual(56)= lhs-rhs;
lhs =y(73);
rhs =y(71)*(1-params(85))+y(72)*params(85)+(y(12)-y(11))*params(85);
residual(57)= lhs-rhs;
lhs =y(74);
rhs =y(72)*(1-params(85))+y(71)*params(85)-(y(12)-y(11))*params(85);
residual(58)= lhs-rhs;
lhs =y(1)*params(55);
rhs =(1-params(48))*y(4)*params(56)+params(48)*params(56)*y(5)+params(52)*(y(23)*(1-params(47))+params(47)*y(24))+params(55)*params(9)*y(79)+y(34)*params(51)*params(54)+y(30)*2*params(36)*(params(48)*params(56)*(1-params(48))+params(47)*params(52)*(1-params(47)));
residual(59)= lhs-rhs;
lhs =y(2)*params(55);
rhs =(1-params(48))*params(56)*y(5)+params(48)*y(4)*params(56)+params(52)*(y(24)*(1-params(47))+params(47)*y(23))+params(55)*params(9)*y(80)+y(35)*params(51)*params(54)-y(30)*2*params(36)*(params(48)*params(56)*(1-params(48))+params(47)*params(52)*(1-params(47)));
residual(60)= lhs-rhs;
lhs =y(55);
rhs =y(43)*(1-params(84))+y(44)*params(84)+y(30)*params(84)*(1-2*params(48))+params(84)*(1-params(84))*2*params(86)*(y(12)+y(59)-y(58)-y(11));
residual(61)= lhs-rhs;
lhs =y(56);
rhs =y(44)*(1-params(84))+y(43)*params(84)-y(30)*params(84)*(1-2*params(48))-params(84)*(1-params(84))*2*params(86)*(y(12)+y(59)-y(58)-y(11));
residual(62)= lhs-rhs;
lhs =y(68)*T660;
rhs =y(75)*(1-params(85))+y(76)*params(85)+y(30)*params(85)*(1-2*params(87))+params(85)*(1-params(85))*2*params(87)*(y(12)+y(72)-y(71)-y(11));
residual(63)= lhs-rhs;
lhs =y(69)*T660;
rhs =y(76)*(1-params(85))+y(75)*params(85)-y(30)*params(85)*(1-2*params(87))-params(85)*(1-params(85))*2*params(87)*(y(12)+y(72)-y(71)-y(11));
residual(64)= lhs-rhs;
lhs =y(7);
rhs =y(7)*params(33)+(1-params(33))*0.5*(params(30)*(y(11)+y(12))+params(31)*(y(1)+y(2)-y(1)-y(2)))+y(93);
residual(65)= lhs-rhs;
lhs =y(11);
rhs =y(8);
residual(66)= lhs-rhs;
lhs =y(12);
rhs =y(9);
residual(67)= lhs-rhs;
lhs =y(30);
rhs =y(30)+y(9)-y(8);
residual(68)= lhs-rhs;
lhs =0;
rhs =y(31)*params(56)*(params(49)-1)+params(56)*params(48)*(y(5)-y(4)+y(30)*((1-params(48))*2*params(36)-1))+params(47)*params(52)*(y(24)-y(23)+y(30)*((1-params(47))*2*params(36)-1));
residual(69)= lhs-rhs;
lhs =params(56)*y(36);
rhs =(y(12)-y(11))*params(69)*params(84)+(y(12)-y(11))*params(90)*params(85);
residual(70)= lhs-rhs;
lhs =y(3);
rhs =y(1)*.5+y(2)*.5;
residual(71)= lhs-rhs;
lhs =y(6);
rhs =y(4)*.5+y(5)*.5;
residual(72)= lhs-rhs;
lhs =y(10);
rhs =y(8)*.5+y(9)*.5;
residual(73)= lhs-rhs;
lhs =y(25);
rhs =y(23)*.5+y(24)*.5;
residual(74)= lhs-rhs;
lhs =y(57);
rhs =y(55)*.5+y(56)*.5;
residual(75)= lhs-rhs;
lhs =y(70);
rhs =y(68)*.5+y(69)*.5;
residual(76)= lhs-rhs;
lhs =y(77);
rhs =y(77)*params(10)+x(1)+x(17);
residual(77)= lhs-rhs;
lhs =y(79);
rhs =y(79)*params(11)+x(2)+x(1)*params(28)+x(18);
residual(78)= lhs-rhs;
lhs =y(81);
rhs =y(81)*params(15)+x(3)+x(19);
residual(79)= lhs-rhs;
lhs =y(83);
rhs =y(83)*params(16)+x(7)+x(20);
residual(80)= lhs-rhs;
lhs =y(85);
rhs =y(85)*params(18)+x(9)+x(21);
residual(81)= lhs-rhs;
lhs =y(87);
rhs =y(87)*params(20)+x(11)+x(22);
residual(82)= lhs-rhs;
lhs =y(89);
rhs =x(23)+y(89)*params(22)+x(13)-params(26)*y(102);
residual(83)= lhs-rhs;
lhs =y(91);
rhs =y(91)*params(24)+x(15)+x(24);
residual(84)= lhs-rhs;
lhs =y(78);
rhs =x(17)+y(78)*params(12)+x(4);
residual(85)= lhs-rhs;
lhs =y(80);
rhs =x(18)+y(80)*params(13)+x(5)+x(4)*params(29);
residual(86)= lhs-rhs;
lhs =y(82);
rhs =x(19)+y(82)*params(14)+x(6);
residual(87)= lhs-rhs;
lhs =y(84);
rhs =x(20)+y(84)*params(17)+x(8);
residual(88)= lhs-rhs;
lhs =y(86);
rhs =x(21)+y(86)*params(19)+x(10);
residual(89)= lhs-rhs;
lhs =y(88);
rhs =x(22)+y(88)*params(21)+x(12);
residual(90)= lhs-rhs;
lhs =y(90);
rhs =x(23)+y(90)*params(23)+x(14)-params(27)*y(103);
residual(91)= lhs-rhs;
lhs =y(92);
rhs =x(24)+y(92)*params(25)+x(16);
residual(92)= lhs-rhs;
lhs =y(93);
rhs =y(93)*params(32)+x(25);
residual(93)= lhs-rhs;
lhs =y(94);
rhs =y(11);
residual(94)= lhs-rhs;
lhs =y(95);
rhs =y(12);
residual(95)= lhs-rhs;
lhs =y(96);
rhs =y(43);
residual(96)= lhs-rhs;
lhs =y(97);
rhs =y(44);
residual(97)= lhs-rhs;
lhs =y(98);
rhs =y(58);
residual(98)= lhs-rhs;
lhs =y(99);
rhs =y(59);
residual(99)= lhs-rhs;
lhs =y(100);
rhs =y(75);
residual(100)= lhs-rhs;
lhs =y(101);
rhs =y(76);
residual(101)= lhs-rhs;
lhs =y(102);
rhs =x(13);
residual(102)= lhs-rhs;
lhs =y(103);
rhs =x(14);
residual(103)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(103, 103);

  %
  % Jacobian matrix
  %

  g1(1,4)=params(60)+1-(1+params(60));
  g1(1,7)=(-T17);
  g1(1,11)=T17;
  g1(1,31)=(-(T17*(-(params(56)*params(6)))));
  g1(2,5)=params(61)+1-(1+params(61));
  g1(2,7)=(-T41);
  g1(2,12)=T41;
  g1(2,31)=(-(params(56)*params(6)*T41));
  g1(3,4)=(-((1-params(60))*params(34)/(1-params(60))));
  g1(3,15)=1;
  g1(3,17)=(-params(37));
  g1(4,5)=(-((1-params(61))*params(35)/(1-params(61))));
  g1(4,16)=1;
  g1(4,18)=(-params(38));
  g1(5,11)=(-(params(1)+params(43)-(1+params(1)*params(43))));
  g1(5,13)=1+params(1)-(1+params(1)-T87);
  g1(5,15)=(-T87);
  g1(5,89)=T3;
  g1(6,12)=(-(params(1)+params(44)-(1+params(1)*params(44))));
  g1(6,14)=1+params(1)-(1+params(1)-T111);
  g1(6,16)=(-T111);
  g1(6,90)=T3;
  g1(7,13)=1;
  g1(7,17)=1;
  g1(7,26)=T3;
  g1(7,32)=T3;
  g1(8,14)=1;
  g1(8,18)=1;
  g1(8,27)=T3;
  g1(8,33)=T3;
  g1(9,21)=T3;
  g1(9,32)=1;
  g1(9,34)=T3;
  g1(10,22)=T3;
  g1(10,33)=1;
  g1(10,35)=T3;
  g1(11,1)=1;
  g1(11,17)=(-(1-params(2)));
  g1(11,32)=(-params(2));
  g1(11,77)=T3;
  g1(12,2)=1;
  g1(12,18)=(-(1-params(2)));
  g1(12,33)=(-params(2));
  g1(12,78)=T3;
  g1(13,13)=(-(1-params(2)));
  g1(13,19)=1;
  g1(13,26)=(-params(2));
  g1(13,77)=1;
  g1(14,14)=(-(1-params(2)));
  g1(14,20)=1;
  g1(14,27)=(-params(2));
  g1(14,78)=1;
  g1(15,8)=1+params(1)*params(58)-(params(1)+params(58));
  g1(15,19)=(-T177);
  g1(15,30)=(-(T177*params(48)));
  g1(16,9)=1+params(1)*params(59)-(params(1)+params(59));
  g1(16,20)=(-T198);
  g1(16,30)=(-(T198*(-params(48))));
  g1(17,7)=1;
  g1(17,11)=T3;
  g1(17,45)=T3;
  g1(18,7)=1;
  g1(18,12)=T3;
  g1(18,46)=T3;
  g1(19,26)=(-(params(51)/params(66)));
  g1(19,28)=(-((1-params(3))/params(66)-1));
  g1(19,31)=(-(params(6)*params(56)/params(66)));
  g1(19,41)=1;
  g1(20,27)=(-(params(51)/params(66)));
  g1(20,29)=(-((1-params(3))/params(66)-1));
  g1(20,31)=params(6)*params(56)/params(66);
  g1(20,42)=1;
  g1(21,28)=1;
  g1(21,30)=params(48)-params(47);
  g1(22,29)=1;
  g1(22,30)=(-(params(48)-params(47)));
  g1(23,21)=(-(1-(1-params(3))));
  g1(23,23)=params(3);
  g1(24,22)=(-(1-(1-params(3))));
  g1(24,24)=params(3);
  g1(25,26)=(1-params(62))/params(62);
  g1(25,34)=T3;
  g1(26,27)=(1-params(63))/params(63);
  g1(26,35)=T3;
  g1(27,21)=(-params(54));
  g1(27,28)=(-params(54));
  g1(27,39)=params(68);
  g1(27,43)=params(69)*(1-params(82));
  g1(28,22)=(-params(54));
  g1(28,29)=(-params(54));
  g1(28,40)=params(68);
  g1(28,44)=params(69)*(1-params(83));
  g1(29,39)=params(68);
  g1(29,51)=(-(params(65)*params(88)));
  g1(29,83)=params(68);
  g1(30,40)=params(68);
  g1(30,52)=(-(params(65)*params(88)));
  g1(30,84)=params(68);
  g1(31,21)=T3;
  g1(31,28)=T3;
  g1(31,41)=T3;
  g1(31,49)=(-((1-params(72))*(1-params(76))*T312));
  g1(31,51)=1;
  g1(32,22)=T3;
  g1(32,29)=T3;
  g1(32,42)=T3;
  g1(32,50)=(-(T312*(1-params(72))*(1-params(77))));
  g1(32,52)=1;
  g1(33,41)=T3;
  g1(33,47)=1;
  g1(33,62)=1;
  g1(34,42)=T3;
  g1(34,48)=1;
  g1(34,63)=1;
  g1(35,47)=1;
  g1(35,49)=(-(params(76)*T312));
  g1(35,85)=T3;
  g1(36,48)=1;
  g1(36,50)=(-(T312*params(77)));
  g1(36,86)=T3;
  g1(37,21)=T3;
  g1(37,28)=T3;
  g1(37,39)=1;
  g1(37,49)=1;
  g1(38,22)=T3;
  g1(38,29)=T3;
  g1(38,40)=1;
  g1(38,50)=1;
  g1(39,21)=1;
  g1(39,28)=1;
  g1(39,37)=1;
  g1(39,41)=1;
  g1(39,43)=T3;
  g1(39,62)=T3;
  g1(39,96)=params(82);
  g1(40,22)=1;
  g1(40,29)=1;
  g1(40,38)=1;
  g1(40,42)=1;
  g1(40,44)=T3;
  g1(40,63)=T3;
  g1(40,97)=params(83);
  g1(41,11)=params(84);
  g1(41,12)=(-params(84));
  g1(41,58)=(-(1-params(84)));
  g1(41,59)=(-params(84));
  g1(41,62)=1;
  g1(42,11)=(-params(84));
  g1(42,12)=params(84);
  g1(42,58)=(-params(84));
  g1(42,59)=(-(1-params(84)));
  g1(42,63)=1;
  g1(43,45)=(-(1-params(92)));
  g1(43,49)=(-(T393*(1-params(76))*(1-params(84))));
  g1(43,50)=(-(T393*(1-params(77))*params(84)));
  g1(43,53)=1;
  g1(43,73)=(-params(92));
  g1(44,46)=(-(1-params(92)));
  g1(44,49)=(-(T393*(1-params(76))*params(84)));
  g1(44,50)=(-(T393*(1-params(77))*(1-params(84))));
  g1(44,54)=1;
  g1(44,74)=(-params(92));
  g1(45,11)=(-(1-(1+params(1)*params(41))));
  g1(45,53)=(-((1-params(1)*params(41))*(1-params(41))/params(41)));
  g1(45,58)=1+params(1)*(1+params(39))-((-((1-params(1)*params(41))*(1-params(41))/params(41)))+params(1)+1+(1+params(1))*params(39));
  g1(45,87)=T3;
  g1(45,94)=(-(params(1)*params(41)));
  g1(45,98)=params(39);
  g1(46,12)=(-(1-(1+params(1)*params(42))));
  g1(46,54)=(-((1-params(1)*params(42))*(1-params(42))/params(42)));
  g1(46,59)=1+params(1)*(1+params(40))-((-((1-params(1)*params(42))*(1-params(42))/params(42)))+params(1)+1+(1+params(1))*params(40));
  g1(46,88)=T3;
  g1(46,95)=(-(params(1)*params(42)));
  g1(46,99)=params(40);
  g1(47,45)=T3;
  g1(47,58)=1;
  g1(47,60)=T3;
  g1(48,46)=T3;
  g1(48,59)=1;
  g1(48,61)=T3;
  g1(49,49)=(-(params(69)*params(64)*params(67)*(1-params(76))*(1-params(84))*T312*(-params(72))));
  g1(49,50)=(-(params(69)*params(64)*params(67)*(1-params(77))*params(84)*T312*(-params(72))));
  g1(49,55)=(-(params(69)*params(64)*params(67)));
  g1(49,58)=(-(params(69)*params(64)*params(67)));
  g1(49,64)=T494;
  g1(49,73)=params(49)*params(90);
  g1(49,75)=params(49)*params(90);
  g1(49,100)=params(49)*params(90)*(-params(93));
  g1(50,49)=(-(params(69)*params(64)*params(67)*(1-params(76))*params(84)*T312*(-params(72))));
  g1(50,50)=(-(params(69)*params(64)*params(67)*(1-params(77))*(1-params(84))*T312*(-params(72))));
  g1(50,56)=(-(params(69)*params(64)*params(67)));
  g1(50,59)=(-(params(69)*params(64)*params(67)));
  g1(50,65)=T494;
  g1(50,74)=params(49)*params(90);
  g1(50,76)=params(49)*params(90);
  g1(50,101)=params(49)*params(90)*(-params(94));
  g1(51,55)=(-params(69));
  g1(51,64)=params(89);
  g1(51,75)=params(90)*(1-params(93));
  g1(51,91)=params(91);
  g1(52,56)=(-params(69));
  g1(52,65)=params(89);
  g1(52,76)=params(90)*(1-params(94));
  g1(52,92)=params(91);
  g1(53,64)=1;
  g1(53,66)=1;
  g1(53,75)=T3;
  g1(54,65)=1;
  g1(54,67)=1;
  g1(54,76)=T3;
  g1(55,45)=T3;
  g1(55,68)=(-(params(90)*params(78)));
  g1(55,71)=1;
  g1(56,46)=T3;
  g1(56,69)=(-(params(90)*params(79)));
  g1(56,72)=1;
  g1(57,11)=params(85);
  g1(57,12)=(-params(85));
  g1(57,71)=(-(1-params(85)));
  g1(57,72)=(-params(85));
  g1(57,73)=1;
  g1(58,11)=(-params(85));
  g1(58,12)=params(85);
  g1(58,71)=(-params(85));
  g1(58,72)=(-(1-params(85)));
  g1(58,74)=1;
  g1(59,1)=params(55);
  g1(59,4)=(-(params(56)*(1-params(48))));
  g1(59,5)=(-(params(56)*params(48)));
  g1(59,23)=(-(params(52)*(1-params(47))));
  g1(59,24)=(-(params(47)*params(52)));
  g1(59,30)=(-(2*params(36)*(params(48)*params(56)*(1-params(48))+params(47)*params(52)*(1-params(47)))));
  g1(59,34)=(-(params(51)*params(54)));
  g1(59,79)=(-(params(55)*params(9)));
  g1(60,2)=params(55);
  g1(60,4)=(-(params(56)*params(48)));
  g1(60,5)=(-(params(56)*(1-params(48))));
  g1(60,23)=(-(params(47)*params(52)));
  g1(60,24)=(-(params(52)*(1-params(47))));
  g1(60,30)=2*params(36)*(params(48)*params(56)*(1-params(48))+params(47)*params(52)*(1-params(47)));
  g1(60,35)=(-(params(51)*params(54)));
  g1(60,80)=(-(params(55)*params(9)));
  g1(61,11)=params(84)*(1-params(84))*2*params(86);
  g1(61,12)=(-(params(84)*(1-params(84))*2*params(86)));
  g1(61,30)=(-(params(84)*(1-2*params(48))));
  g1(61,43)=(-(1-params(84)));
  g1(61,44)=(-params(84));
  g1(61,55)=1;
  g1(61,58)=params(84)*(1-params(84))*2*params(86);
  g1(61,59)=(-(params(84)*(1-params(84))*2*params(86)));
  g1(62,11)=(-(params(84)*(1-params(84))*2*params(86)));
  g1(62,12)=params(84)*(1-params(84))*2*params(86);
  g1(62,30)=params(84)*(1-2*params(48));
  g1(62,43)=(-params(84));
  g1(62,44)=(-(1-params(84)));
  g1(62,56)=1;
  g1(62,58)=(-(params(84)*(1-params(84))*2*params(86)));
  g1(62,59)=params(84)*(1-params(84))*2*params(86);
  g1(63,11)=params(85)*(1-params(85))*2*params(87);
  g1(63,12)=(-(params(85)*(1-params(85))*2*params(87)));
  g1(63,30)=(-(params(85)*(1-2*params(87))));
  g1(63,68)=T660;
  g1(63,71)=params(85)*(1-params(85))*2*params(87);
  g1(63,72)=(-(params(85)*(1-params(85))*2*params(87)));
  g1(63,75)=(-(1-params(85)));
  g1(63,76)=(-params(85));
  g1(64,11)=(-(params(85)*(1-params(85))*2*params(87)));
  g1(64,12)=params(85)*(1-params(85))*2*params(87);
  g1(64,30)=params(85)*(1-2*params(87));
  g1(64,69)=T660;
  g1(64,71)=(-(params(85)*(1-params(85))*2*params(87)));
  g1(64,72)=params(85)*(1-params(85))*2*params(87);
  g1(64,75)=(-params(85));
  g1(64,76)=(-(1-params(85)));
  g1(65,7)=1-params(33);
  g1(65,11)=(-((1-params(33))*0.5*params(30)));
  g1(65,12)=(-((1-params(33))*0.5*params(30)));
  g1(65,93)=T3;
  g1(66,8)=T3;
  g1(66,11)=1;
  g1(67,9)=T3;
  g1(67,12)=1;
  g1(68,8)=1;
  g1(68,9)=T3;
  g1(69,4)=params(56)*params(48);
  g1(69,5)=(-(params(56)*params(48)));
  g1(69,23)=params(47)*params(52);
  g1(69,24)=(-(params(47)*params(52)));
  g1(69,30)=(-(params(56)*params(48)*((1-params(48))*2*params(36)-1)+params(47)*params(52)*((1-params(47))*2*params(36)-1)));
  g1(69,31)=(-(params(56)*(params(49)-1)));
  g1(70,11)=(-((-(params(69)*params(84)))-params(90)*params(85)));
  g1(70,12)=(-(params(69)*params(84)+params(90)*params(85)));
  g1(70,36)=params(56);
  g1(71,1)=(-.5);
  g1(71,2)=(-.5);
  g1(71,3)=1;
  g1(72,4)=(-.5);
  g1(72,5)=(-.5);
  g1(72,6)=1;
  g1(73,8)=(-.5);
  g1(73,9)=(-.5);
  g1(73,10)=1;
  g1(74,23)=(-.5);
  g1(74,24)=(-.5);
  g1(74,25)=1;
  g1(75,55)=(-.5);
  g1(75,56)=(-.5);
  g1(75,57)=1;
  g1(76,68)=(-.5);
  g1(76,69)=(-.5);
  g1(76,70)=1;
  g1(77,77)=1-params(10);
  g1(78,79)=1-params(11);
  g1(79,81)=1-params(15);
  g1(80,83)=1-params(16);
  g1(81,85)=1-params(18);
  g1(82,87)=1-params(20);
  g1(83,89)=1-params(22);
  g1(83,102)=params(26);
  g1(84,91)=1-params(24);
  g1(85,78)=1-params(12);
  g1(86,80)=1-params(13);
  g1(87,82)=1-params(14);
  g1(88,84)=1-params(17);
  g1(89,86)=1-params(19);
  g1(90,88)=1-params(21);
  g1(91,90)=1-params(23);
  g1(91,103)=params(27);
  g1(92,92)=1-params(25);
  g1(93,93)=1-params(32);
  g1(94,11)=T3;
  g1(94,94)=1;
  g1(95,12)=T3;
  g1(95,95)=1;
  g1(96,43)=T3;
  g1(96,96)=1;
  g1(97,44)=T3;
  g1(97,97)=1;
  g1(98,58)=T3;
  g1(98,98)=1;
  g1(99,59)=T3;
  g1(99,99)=1;
  g1(100,75)=T3;
  g1(100,100)=1;
  g1(101,76)=T3;
  g1(101,101)=1;
  g1(102,102)=1;
  g1(103,103)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],103,10609);
end
end