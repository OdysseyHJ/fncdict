系统仓位,788998,,IF^pCODE^e^e"1A0001" OR CODE^e^e"399001" OR CODE^e^e"399005"OR CODE^e^e"399006"^P^r^n{^r^n IF^pPERIODNAME<>"日线"^P^r^n{^r^n 统计:"该指标只在日线周期下有效。"^a^r^n RETURN^a^r^n}^r^nm3:^eMA^pCLOSE^c2^P^a^r^nMs5:^eSMA^pm3^c5^c3^P^a^r^nMs13:^eSMA^pCLOSE^c13^c2^P^a^r^nMs21:^eSMA^pCLOSE^c21^c1^P^a^r^nRSV^e^pCLOSE^sLLV^pLOW^c9^P^P/^pHHV^pHIGH^c9^P^sLLV^pLOW^c9^P^P*100^a^r^na^eSMA^pRSV^c3^c1^P^a^r^nb^eSMA^pa^c3^c1^P^a^r^n大单净差BBD:^eBIGBUYCOUNT1+WAITBUYCOUNT1^sBIGSELLCOUNT1^sWAITSELLCOUNT1^a^r^nDIFF:^eEMA^p大单净差BBD^c6^P ^s EMA^p大单净差BBD^c13^P^a^r^nDIFF2:^eEMA^p大单净差BBD^c9^P ^s EMA^p大单净差BBD^c20^P^a^r^nm1^e0^a^r^nm2^e0^a^r^nm3^e0^a^r^nm4^e0^a^r^nm5^e0^a^r^nm6^e0^a^r^nIF^pMs5>REF^pMs5^c1^P^P^r^n    m1^e10^a^r^nELSE IF^pMs5<REF^pMs5^c1^P^P^r^n    m1^e^s10^a^r^nIF^pMs5<C^P^r^n    m2^e5^a^r^nELSE IF^pMs5>C^P^r^n    m2^e^s5^a^r^nIF^pMs13>REF^pMs13^c1^P^P^r^n    m3^e5^a^r^nELSE IF^pMs13<REF^pMs13^c1^P^P^r^n    m3^e^s5^a^r^nIF^pMs21>REF^pMs21^c1^P^P^r^n    m4^e10^a^r^nELSE IF^pMs21<REF^pMs21^c1^P^P^r^n    m4^e^s10^a^r^nIF^pb>90^P^r^n    m5^e^s10^a^r^nELSE IF^pb<90 AND b>10^P^r^n    m5^e0^a^r^nELSE IF^pb<10^P^r^n    m5^e10^a^r^nIF^pdiff>0 AND diff2>0^P^r^n    m6^e10^a^r^nELSE IF^pdiff>0 OR diff2>0^P^r^n    m6^e0^a^r^nELSE IF^pdiff<0 AND diff2<0^P^r^n    m6^e^s10^a   ^r^n大盘仓位为^e^pm1+m2+m3+m4+m5+m6+50^P^a^r^n}^r^nRETURN 大盘仓位为^a,2147430400;