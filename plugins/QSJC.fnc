趋势决策,788995,,大单净差BBD:^eBIGBUYCOUNT1+WAITBUYCOUNT1^sBIGSELLCOUNT1^sWAITSELLCOUNT1^a^r^ndd:^e大单净差BBD^a^r^nDIFF:^eEMA^p大单净差BBD^c6^P ^s EMA^p大单净差BBD^c13^P^a^r^nDIFF2:^eEMA^p大单净差BBD^c9^P ^s EMA^p大单净差BBD^c20^P^a^r^nzf^eMA^pCLOSE^c5^P^sREF^pMA^pCLOSE^c5^P^c1^P^a^r^nIF^pdiff>0 AND diff2>0 AND zf>0^P^r^n  dp^e1^a^r^nELSE IF^p^pdiff>0 OR diff2>0^PAND zf>0 OR ^pdiff>0 AND diff2>0 AND MA^pCLOSE^c5^P>MA^pCLOSE^c10^P^P^P^r^n  dp^e2^a^r^n  A^ediff>0 AND diff2>0 AND zf>0^a^r^n  B^e^pdiff>0 OR diff2>0^PAND zf>0 OR ^pdiff>0 AND diff2>0 AND MA^pCLOSE^c5^P>MA^pCLOSE^c10^P^P^a^r^nIF^pA^e0 AND B^e0^P^r^n dp^e3^a^r^nf1:^eMA^pCLOSE^c21^P^a^r^ndt:^eIF^pCLOSE>f1^c^pCLOSE+HIGH^P/2^cf1^P^a^r^nf2:^eMA^pdt^c1^P^a ^r^nDIFFf :^e EMA^pCLOSE^c12^P ^s EMA^pCLOSE^c26^P^a^r^nDEAa  :^e EMA^pDIFFf^c9^P^a^r^nIF^pf2>f1 AND dp^e1 AND DEAa<^s20^P DPQS:1^a ^r^nIF^pf2>f1 AND dp^e1 AND DEAa>^e^s20 AND DEAa<^e20^P DPQS:2^a^r^nIF^pf2>f1 AND dp^e1 AND DEAa>20^P DPQS:3^a^r^nIF^p^pf2>f1 AND ^pdp^e2 OR dp^e3^P^POR^pf2^ef1 AND ^pdp^e1 OR dp^e2^P^P^P^r^n	 	{^r^n	 IF^pDEAa<^s20^P DPQS:4^a^r^n	 IF^pDEAa>^e^s20 AND DEAa<^e20^P DPQS:5^a^r^n	 IF^pDEAa>20^P DPQS:6^a	^r^n	 		}^r^n	 		ELSE IF^pf2^ef1 AND dp^e3^P^r^n	 			{^r^n	 			IF^pDEAa>^e^s20^P DPQS:7^a^r^n	 			IF^pDEAa<^s20^P DPQS:8^a^r^n	 				}^r^nIF^pdpqs^e1^P^r^n当前:'强势初期'^a^r^nELSE IF^pdpqs^e2^P^r^n当前:'强势行情'^a^r^nELSE IF^pdpqs^e3^P^r^n当前:'强势末期'^a^r^nELSE IF^pdpqs^e4^P^r^n当前:'低位震荡'^a^r^nELSE IF^pdpqs^e5^P^r^n当前:'震荡行情'^a^r^nELSE IF^pdpqs^e6^P^r^n当前:'高位震荡'^a^r^nELSE IF^pdpqs^e7^P^r^n当前:'弱势行情'^a^r^nELSE IF^pdpqs^e8^P^r^n当前:'弱势末期'^a^r^nRETURN 当前^a/*DRAWTEXT^pDPQS^e1 AND ABS^pREF^pDPQS^c1^P^sDPQS^P>0^cDPQS^c'强势初期'^P^cRGB^p255^c100^c0^P^a^r^nDRAWTEXT^pDPQS^e2 AND ABS^pREF^pDPQS^c1^P^sDPQS^P>0^cDPQS^c'强势行情'^P^cRGB^p255^c0^c0^P^a^r^nDRAWTEXT^pDPQS^e3 AND ABS^pREF^pDPQS^c1^P^sDPQS^P>0^cDPQS^c'强势末期'^P^cRGB^p255^c150^c0^P^a^r^nDRAWTEXT^pDPQS^e4 AND ABS^pREF^pDPQS^c1^P^sDPQS^P>0^cDPQS^c'低位震荡'^P^a^r^nDRAWTEXT^pDPQS^e5 AND ABS^pREF^pDPQS^c1^P^sDPQS^P>0^cDPQS^c'震荡行情'^P^a^r^nDRAWTEXT^pDPQS^e6 AND ABS^pREF^pDPQS^c1^P^sDPQS^P>0^cDPQS^c'高位震荡'^P^a^r^nDRAWTEXT^pDPQS^e7 AND ABS^pREF^pDPQS^c1^P^sDPQS^P>0^cDPQS^c'弱势行情'^P^cRGB^p0^c255^c0^P^a^r^nDRAWTEXT^pDPQS^e8 AND ABS^pREF^pDPQS^c1^P^sDPQS^P>0^cDPQS^c'弱势末期'^P^cRGB^p0^c255^c200^P^a^r^n说明: '1强势初期，2强势行情，3强势末期，4低位震荡，5震荡行情，6高位震荡，7弱势行情，8弱势末期。'^a*/^r^n	^r^n	 ^r^n,2147430400;