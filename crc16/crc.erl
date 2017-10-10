%%%-------------------------------------------------------------------
%%% @author  <yunnet>
%%% @copyright (C) 2015,
%%% @doc CRC-CCITT (0xFFFF)
%%% CRC-CCITT (0xFFFF)
%%% @end
%%% Created :  15 Jan 2015 by  <yunnet@gmail.com>
%%%-------------------------------------------------------------------

-module(crc).
-export([crc16/1, test/0]).

crc_index(0) -> 16#0000;
crc_index(1) -> 16#1021;
crc_index(2) -> 16#2042;
crc_index(3) -> 16#3063;
crc_index(4) -> 16#4084;
crc_index(5) -> 16#50a5;
crc_index(6) -> 16#60c6;
crc_index(7) -> 16#70e7;

crc_index(8) -> 16#8108;
crc_index(9) -> 16#9129;
crc_index(10) -> 16#a14a;
crc_index(11) -> 16#b16b;
crc_index(12) -> 16#c18c;
crc_index(13) -> 16#d1ad;
crc_index(14) -> 16#e1ce;
crc_index(15) -> 16#f1ef;

crc_index(16) -> 16#1231;
crc_index(17) -> 16#0210;
crc_index(18) -> 16#3273;
crc_index(19) -> 16#2252;
crc_index(20) -> 16#52b5;
crc_index(21) -> 16#4294;
crc_index(22) -> 16#72f7;
crc_index(23) -> 16#62d6;

crc_index(24) -> 16#9339;
crc_index(25) -> 16#8318;
crc_index(26) -> 16#b37b;
crc_index(27) -> 16#a35a;
crc_index(28) -> 16#d3bd;
crc_index(29) -> 16#c39c;
crc_index(30) -> 16#f3ff;
crc_index(31) -> 16#e3de;

crc_index(32) -> 16#2462;
crc_index(33) -> 16#3443;
crc_index(34) -> 16#0420;
crc_index(35) -> 16#1401;
crc_index(36) -> 16#64e6;
crc_index(37) -> 16#74c7;
crc_index(38) -> 16#44a4;
crc_index(39) -> 16#5485;

crc_index(40) -> 16#a56a;
crc_index(41) -> 16#b54b;
crc_index(42) -> 16#8528;
crc_index(43) -> 16#9509;
crc_index(44) -> 16#e5ee;
crc_index(45) -> 16#f5cf;
crc_index(46) -> 16#c5ac;
crc_index(47) -> 16#d58d;

crc_index(48) -> 16#3653;
crc_index(49) -> 16#2672;
crc_index(50) -> 16#1611;
crc_index(51) -> 16#0630;
crc_index(52) -> 16#76d7;
crc_index(53) -> 16#66f6;
crc_index(54) -> 16#5695;
crc_index(55) -> 16#46b4;

crc_index(56) -> 16#b75b;
crc_index(57) -> 16#a77a;
crc_index(58) -> 16#9719;
crc_index(59) -> 16#8738;
crc_index(60) -> 16#f7df;
crc_index(61) -> 16#e7fe;
crc_index(62) -> 16#d79d;
crc_index(63) -> 16#c7bc;

crc_index(64) -> 16#48c4;
crc_index(65) -> 16#58e5;
crc_index(66) -> 16#6886;
crc_index(67) -> 16#78a7;
crc_index(68) -> 16#0840;
crc_index(69) -> 16#1861;
crc_index(70) -> 16#2802;
crc_index(71) -> 16#3823;

crc_index(72) -> 16#c9cc;
crc_index(73) -> 16#d9ed;
crc_index(74) -> 16#e98e;
crc_index(75) -> 16#f9af;
crc_index(76) -> 16#8948;
crc_index(77) -> 16#9969;
crc_index(78) -> 16#a90a;
crc_index(79) -> 16#b92b;

crc_index(80) -> 16#5af5;
crc_index(81) -> 16#4ad4;
crc_index(82) -> 16#7ab7;
crc_index(83) -> 16#6a96;
crc_index(84) -> 16#1a71;
crc_index(85) -> 16#0a50;
crc_index(86) -> 16#3a33;
crc_index(87) -> 16#2a12;

crc_index(88) -> 16#dbfd;
crc_index(89) -> 16#cbdc;
crc_index(90) -> 16#fbbf;
crc_index(91) -> 16#eb9e;
crc_index(92) -> 16#9b79;
crc_index(93) -> 16#8b58;
crc_index(94) -> 16#bb3b;
crc_index(95) -> 16#ab1a;

crc_index(96) -> 16#6ca6;
crc_index(97) -> 16#7c87;
crc_index(98) -> 16#4ce4;
crc_index(99) -> 16#5cc5;
crc_index(100) -> 16#2c22;
crc_index(101) -> 16#3c03;
crc_index(102) -> 16#0c60;
crc_index(103) -> 16#1c41;

crc_index(104) -> 16#edae;
crc_index(105) -> 16#fd8f;
crc_index(106) -> 16#cdec;
crc_index(107) -> 16#ddcd;
crc_index(108) -> 16#ad2a;
crc_index(109) -> 16#bd0b;
crc_index(110) -> 16#8d68;
crc_index(111) -> 16#9d49;

crc_index(112) -> 16#7e97;
crc_index(113) -> 16#6eb6;
crc_index(114) -> 16#5ed5;
crc_index(115) -> 16#4ef4;
crc_index(116) -> 16#3e13;
crc_index(117) -> 16#2e32;
crc_index(118) -> 16#1e51;
crc_index(119) -> 16#0e70;

crc_index(120) -> 16#ff9f;
crc_index(121) -> 16#efbe;
crc_index(122) -> 16#dfdd;
crc_index(123) -> 16#cffc;
crc_index(124) -> 16#bf1b;
crc_index(125) -> 16#af3a;
crc_index(126) -> 16#9f59;
crc_index(127) -> 16#8f78;

crc_index(128) -> 16#9188;
crc_index(129) -> 16#81a9;
crc_index(130) -> 16#b1ca;
crc_index(131) -> 16#a1eb;
crc_index(132) -> 16#d10c;
crc_index(133) -> 16#c12d;
crc_index(134) -> 16#f14e;
crc_index(135) -> 16#e16f;

crc_index(136) -> 16#1080;
crc_index(137) -> 16#00a1;
crc_index(138) -> 16#30c2;
crc_index(139) -> 16#20e3;
crc_index(140) -> 16#5004;
crc_index(141) -> 16#4025;
crc_index(142) -> 16#7046;
crc_index(143) -> 16#6067;

crc_index(144) -> 16#83b9;
crc_index(145) -> 16#9398;
crc_index(146) -> 16#a3fb;
crc_index(147) -> 16#b3da;
crc_index(148) -> 16#c33d;
crc_index(149) -> 16#d31c;
crc_index(150) -> 16#e37f;
crc_index(151) -> 16#f35e;

crc_index(152) -> 16#02b1;
crc_index(153) -> 16#1290;
crc_index(154) -> 16#22f3;
crc_index(155) -> 16#32d2;
crc_index(156) -> 16#4235;
crc_index(157) -> 16#5214;
crc_index(158) -> 16#6277;
crc_index(159) -> 16#7256;

crc_index(160) -> 16#b5ea;
crc_index(161) -> 16#a5cb;
crc_index(162) -> 16#95a8;
crc_index(163) -> 16#8589;
crc_index(164) -> 16#f56e;
crc_index(165) -> 16#e54f;
crc_index(166) -> 16#d52c;
crc_index(167) -> 16#c50d;

crc_index(168) -> 16#34e2;
crc_index(169) -> 16#24c3;
crc_index(170) -> 16#14a0;
crc_index(171) -> 16#0481;
crc_index(172) -> 16#7466;
crc_index(173) -> 16#6447;
crc_index(174) -> 16#5424;
crc_index(175) -> 16#4405;

crc_index(176) -> 16#a7db;
crc_index(177) -> 16#b7fa;
crc_index(178) -> 16#8799;
crc_index(179) -> 16#97b8;
crc_index(180) -> 16#e75f;
crc_index(181) -> 16#f77e;
crc_index(182) -> 16#c71d;
crc_index(183) -> 16#d73c;

crc_index(184) -> 16#26d3;
crc_index(185) -> 16#36f2;
crc_index(186) -> 16#0691;
crc_index(187) -> 16#16b0;
crc_index(188) -> 16#6657;
crc_index(189) -> 16#7676;
crc_index(190) -> 16#4615;
crc_index(191) -> 16#5634;

crc_index(192) -> 16#d94c;
crc_index(193) -> 16#c96d;
crc_index(194) -> 16#f90e;
crc_index(195) -> 16#e92f;
crc_index(196) -> 16#99c8;
crc_index(197) -> 16#89e9;
crc_index(198) -> 16#b98a;
crc_index(199) -> 16#a9ab;

crc_index(200) -> 16#5844;
crc_index(201) -> 16#4865;
crc_index(202) -> 16#7806;
crc_index(203) -> 16#6827;
crc_index(204) -> 16#18c0;
crc_index(205) -> 16#08e1;
crc_index(206) -> 16#3882;
crc_index(207) -> 16#28a3;

crc_index(208) -> 16#cb7d;
crc_index(209) -> 16#db5c;
crc_index(210) -> 16#eb3f;
crc_index(211) -> 16#fb1e;
crc_index(212) -> 16#8bf9;
crc_index(213) -> 16#9bd8;
crc_index(214) -> 16#abbb;
crc_index(215) -> 16#bb9a;

crc_index(216) -> 16#4a75;
crc_index(217) -> 16#5a54;
crc_index(218) -> 16#6a37;
crc_index(219) -> 16#7a16;
crc_index(220) -> 16#0af1;
crc_index(221) -> 16#1ad0;
crc_index(222) -> 16#2ab3;
crc_index(223) -> 16#3a92;

crc_index(224) -> 16#fd2e;
crc_index(225) -> 16#ed0f;
crc_index(226) -> 16#dd6c;
crc_index(227) -> 16#cd4d;
crc_index(228) -> 16#bdaa;
crc_index(229) -> 16#ad8b;
crc_index(230) -> 16#9de8;
crc_index(231) -> 16#8dc9;

crc_index(232) -> 16#7c26;
crc_index(233) -> 16#6c07;
crc_index(234) -> 16#5c64;
crc_index(235) -> 16#4c45;
crc_index(236) -> 16#3ca2;
crc_index(237) -> 16#2c83;
crc_index(238) -> 16#1ce0;
crc_index(239) -> 16#0cc1;

crc_index(240) -> 16#ef1f;
crc_index(241) -> 16#ff3e;
crc_index(242) -> 16#cf5d;
crc_index(243) -> 16#df7c;
crc_index(244) -> 16#af9b;
crc_index(245) -> 16#bfba;
crc_index(246) -> 16#8fd9;
crc_index(247) -> 16#9ff8;

crc_index(248) -> 16#6e17;
crc_index(249) -> 16#7e36;
crc_index(250) -> 16#4e55;
crc_index(251) -> 16#5e74;
crc_index(252) -> 16#2e93;
crc_index(253) -> 16#3eb2;
crc_index(254) -> 16#0ed1;
crc_index(255) -> 16#1ef0.

calcByte(Fcs, B) ->
    Idx = ((Fcs bsr 8) band 16#ff) bxor B,
    ((Fcs bsl 8) band 16#ffff) bxor crc_index(Idx).

crc16(X) when is_list(X) ->
    lists:foldl(fun (B, Fsc)-> calcByte(Fsc, B) end, 16#FFFF, X).

test()->
    X = "123456789",
    Crc16 = crc16(X),
    io:format("crc16(~p)  is ~p. ~n",[X, Crc16]).