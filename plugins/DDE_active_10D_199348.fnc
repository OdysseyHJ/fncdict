DDE_active_10D,199348,,//大单占盘比最大的个股名单前50个^c计算周期，三日，五日^r^nb1:^eBIGBUYCOUNT1+WAITBUYCOUNT1^a^r^ns1:^eBIGSELLCOUNT1+WAITSELLCOUNT1^a^r^nb2:^eBIGBUYCOUNT2+WAITBUYCOUNT2^a^r^ns2:^eBIGSELLCOUNT2+WAITSELLCOUNT2^a^r^nbbb:^e^pb1+b2^ss1^ss2^P/SHGZG *100^a^r^n^r^nIF ^pSUM^pbbb^c10^P> 0^P  RETURN 1^a,2147430400;