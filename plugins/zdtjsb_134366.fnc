涨跌停家数比,134366,,// 为了排序，涨在前跌在后^r^nIF ^pISNULL^pFALLLIMITCOUNT^P OR ISNULL^pRISELIMITCOUNT^P^P^r^n{^r^n	RETURN NULL^a^r^n}^r^n^r^nret ^e 0.0^a^r^nIF ^pRISELIMITCOUNT > 0^P^r^n{^r^n	ret ^e RISELIMITCOUNT^a^r^n}^r^nELSE IF ^pFALLLIMITCOUNT> 0^P^r^n{^r^n	ret ^e ^sFALLLIMITCOUNT^a^r^n}^r^n^r^nRETURN ret + 0.0^a,0;