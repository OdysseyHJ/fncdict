waveRange_strategy,658337,,r0:^e^p^pIF^pISNULL^pZDMR^b^s1^B^P^c0^cZDMR^P+IF^pISNULL^pBDMR^b^s1^B^P^c0^cBDMR^P^P^s^pIF^pISNULL^pZDMC^b^s1^B^P^c0^cZDMC^P+IF^pISNULL^pBDMC^b^s1^B^P^c0^cBDMC^P^P^P/SHGZG*100^a^r^nMA5:^eMA^pr0^c5^P^a^r^n超买:^e3.2^ccoloryellow^a^r^n超卖:^e0.5^ccoloryellow^a^r^n中位线:^e1.75^a^r^n最小值:^eLLV^pLOW^c10^P^a^r^n最大值:^eHHV^pHIGH^c25^P^a^r^n波动线:^eEMA^p^pCLOSE^s最小值^P/^p最大值^s最小值^P*4^c4^P^a^r^n平均线:^eEMA^p波动线^c3^P^a^r^n信息:^e平均线>^eREF^p平均线^c1^P^a^r^n走强:^eCLOSE>MA^pCLOSE^c20^PAND CLOSE>MA^pCLOSE^c5^P^a^r^n走弱:^eCLOSE<MA^pCLOSE^c10^PAND CLOSE<MA^pCLOSE^c5^P^a^r^n量:^eVOL>MA^pVOL^c5^P^a^r^n//STICKLINE^p平均线>^eREF^p平均线^c1^P^c波动线^cREF^p波动线^c1^P^c5^c0^P^ccolorred^a^r^n//STICKLINE^p平均线<REF^p平均线^c1^P^c波动线 ^cREF^p波动线^c1^P^c5^c0^P^ccolorgreen^a^r^nd^e信息^e1 AND REF^p信息^c1^P^e0 AND ^pREF^p信息^c2^P+REF^p信息^c3^P^e0^P AND 平均线<0.5^a^r^ns^e信息^e1 AND REF^p信息^c1^P^e0 AND ^pREF^p信息^c2^P+REF^p信息^c3^P^e0^P AND 走强^e1 AND REF^p走强^c1^P^e0 AND 量^e1^a^r^ndd:^e平均线>2 AND ^p信息^e0 AND REF^p信息^c1^P^e1^P AND ^pREF^p信息^c2^P+REF^p信息^c3^P^e2^P^a^r^ntz:^e^p信息^e0 AND REF^p信息^c1^P^e1^P AND ^pREF^p信息^c2^P+REF^p信息^c3^P^e2^P AND MA5<0 AND 走弱^e1 AND 平均线>1^a^r^n//DRAWTEXT^pd^e1^c平均线^c'底'^P^a^r^n//DRAWTEXT^ps^e1^c平均线^c'升'^P^a^r^n//DRAWTEXT^pdd^e1^c平均线^c'顶'^P^a^r^n//DRAWTEXT^ptz^e1^c平均线^c'下'^P^a^r^n//PARTLINE^p平均线^c平均线>^eREF^p平均线^c1^P^ccolorred^c平均线<REF^p平均线^c1^P^ccolorgreen^P^a^r^nIF^pd^e1 OR s^e1^P^r^n	bdcl^e1^a//买入时机^a^r^n	ELSE IF^pdd^e1^P^r^n		bdcl^e2^a//卖出时机^a^r^n		ELSE IF^p^pCLOSE^sHHV^pHIGH^c5^P^P/HHV^pHIGH^c5^P<^s0.05^P^r^n			bdcl^e2^a//止损卖出时机^a^r^n			ELSE bdcl^e1.5^a^r^nRETURN bdcl^a^r^n^r^n,2147430400;