红电波选股,265365,,bser8^eCLOSE^sMA^pCLOSE^c120^P^a^r^nBSER9^eMA^pCLOSE^c30^P^sMA^pCLOSE^c60^P^a^r^nREFBSER9^eIF^pBSER9>REF^pBSER9^c1^P^c1^c0^P^a^r^nBSER^eIF^p^pBSER9>0 OR REFBSER9>0 OR bser8>0^P^c1^c0^P^a^r^nLC:^eREF^pCLOSE^c1^P^a^r^nRSI1:^eSMA^pMAX^pCLOSE^sLC^c0^P^c6^c1^P/SMA^pABS^pCLOSE^sLC^P^c6^c1^P*100^a^r^nAR:^eSUM^pHIGH^sOPEN^c26^P/SUM^pOPEN^sLOW^c26^P*100^a^r^n卖点雷达^eCROSS^p85^cRSI1^P*30^a^r^nSEL1^eIF^pCROSS^p85^cRSI1^P^c1^c0^P^a ^r^nVarb:^eSMA^pMAX^pCLOSE^sLC^c0^P^c7^c1^P/SMA^pABS^pCLOSE^sLC^P^c7^c1^P*100^a ^r^nVarc:^eSMA^pMAX^pCLOSE^sLC^c0^P^c13^c1^P/SMA^pABS^pCLOSE^sLC^P^c13^c1^P*100^a ^r^nVard:^eBARSCOUNT^pCLOSE^P^a ^r^n买点雷达^e^pVarb< 20 AND Varc< 25 AND Vard> 50 AND AR<70 AND VOL<VOL^b1^B AND VOL^b1^B<VOL^b2^B AND VOL^b2^B<VOL^b3^B^P*30^a^r^nbu1^eIF^pCROSS^pRSI1^c25^P AND bser>0^c1^c0^P^a^r^n//底^r^n主力^eEMA^p ^pCLOSE^sMA^pCLOSE^c7^P^P/MA^pCLOSE^c7^P*480^c2^P*5^a ^r^n散户^eEMA^p ^pCLOSE^sMA^pCLOSE^c11^P^P/MA^pCLOSE^c11^P*480^c7^P*5^a ^r^nbser3^e散户^sREF^p散户^c1^P^a^r^nbu3^eIF^pCROSS^p主力^c散户^P AND 主力<^s10 AND bser>0 AND bser3>0^c1^c0^P^a^r^n//升   ^r^n//DRAWICON^pCROSS^p主力^c散户^P AND 主力<^s10 AND 散户>REF^p散户^c1^P OR CROSS^p主力^c散户^P AND 散户<^s35 ^c^s15^c2^P^a^r^nbu2^eIF^pCROSS^pRSI1^c20^PAND 散户<^s20 AND 买点雷达 AND bser>0^c1^c0^P^a^r^n//底^r^n^r^nIF ^pbu1 OR bu2 OR bu3^P^r^n^r^n     RETURN 1^a^r^n^r^n^r^n,2147430400;