高级诊股资金量能价格分析,462056,CS^e360^c0^c1000^c1^r,r0:^p^pIF^pISNULL^pBIGBUYCOUNT1+BIGBUYCOUNT2^P^c0^c^pBIGBUYCOUNT1+BIGBUYCOUNT2^P^P+IF^pISNULL^pWAITBUYCOUNT1+WAITBUYCOUNT2^P^c0^c^pWAITBUYCOUNT1+WAITBUYCOUNT2^P^P^P^r^n	^s^pIF^pISNULL^pBIGSELLCOUNT1+BIGSELLCOUNT2^P^c0^c^pBIGSELLCOUNT1+BIGSELLCOUNT2^P^P+IF^pISNULL^pWAITSELLCOUNT1+WAITSELLCOUNT2^P^c0^c^pWAITSELLCOUNT1+WAITSELLCOUNT2^P^P^P^P^r^n		/SHGZG*100^a^r^nzdlc:^sLLV^pr0^c10^P^a^r^nzdlr:HHV^pr0^c10^P^a^r^nzdzj:^eHHV^pABS^pr0^P^cCs^P^a^r^nzdzj1:zdzj*0.191^a^r^nzdzj2:zdzj*0.382^a^r^nzdzj3:zdzj*0.618^a^r^nLN:VOL^a^r^nzdl:^eHHV^pVOL^cCs^P^a^r^nzdl1:zdl*0.191^a^r^nzdl2:zdl*0.382^a^r^nzdl3:zdl*0.618^a^r^nzhl:^eHHV^pVOL^c20^P^a^r^nA:IF^pCROSS^pVOL^cREF^pzhl^c1^P^P AND VOL<HHV^pVOL^cCs^P*0.191 ^c1^c0^P^a^r^nB:IF^pCROSS^pVOL^cREF^pzhl^c1^P^P AND VOL>HHV^pVOL^cCs^P*0.618 ^c1^c0^P^a^r^nMAVOL1:MA^pVOL^c5^P^a^r^nMAVOL2:MA^pVOL^c60^P^a^r^nMAVOL3:REF^pMA^pVOL^c5^P^c3^P^a^r^nduan:EMA^p100*^pC^sLLV^pLOW^c20^P^P/^pHHV^pH^c20^P^sLLV^pLOW^c20^P^P^c3^P^a^r^nzhong:EMA^p100*^pC^sLLV^pLOW^c40^P^P/^pHHV^pH^c40^P^sLLV^pLOW^c40^P^P^c3^P^a^r^nCHang:EMA^p100*^pC^sLLV^pLOW^c60^P^P/^pHHV^pH^c60^P^sLLV^pLOW^c60^P^P^c3^P^a^r^njg1:20^a^r^njg2:50^a^r^njg3:80^a^r^ngjzg1:^eABS^pr0^P<^ezdzj1 AND VOL<^ezdl1 AND duan<^e20^a^r^ngjzg2:^e^pABS^pr0^P>zdzj1 AND ABS^pr0^P<^ezdzj2^P AND ^pVOL>zdl1 AND VOL<^ezdl2^P AND ^pduan>20 AND duan<^e50^P^a^r^ngjzg3:^e^pABS^pr0^P>zdzj2 AND ABS^pr0^P<^ezdzj3^P AND ^pVOL>zdl2 AND VOL<^ezdl3^P AND ^pduan>50 AND duan<^e80^P^a^r^ngjzg4:^eABS^pr0^P>zdzj3 AND VOL>zdl3 AND duan>80^a^r^nIF^pgjzg1<REF^pgjzg1^c1^P AND ^pduan>zhong OR duan>CHang^P^P^r^nmd:^e1^a^r^nELSE IF^pgjzg2<REF^pgjzg2^c1^PAND ^pduan>zhong OR duan>chang^PAND r0>0 ^P^r^nzC:^e2^a^r^nELSE IF^p^pgjzg3^e^e1 AND r0<0^P OR gjzg3<REF^pgjzg3^c1^P^P^r^njC:^e3^a^r^nELSE IF^p^pgjzg4^e^e1 AND r0<0^P OR gjzg4<REF^pgjzg4^c1^P^P^r^nmc:^e4^a^r^nELSE ^r^n{^r^nmd:^e0^a^r^nzc:^e0^a^r^njc:^e0^a^r^nmc:^e0^a^r^n}^r^nzjmd:^eBARSLAST^pmd^e^e1^P^a^r^nzjmd1:^eBARSLAST^pmc^e^e1 OR CROSS^p80^cduan^P^P^a^r^nzjmd2:^eBARSLAST^pmc^e^e1 OR CROSS^p80^czhong^P^P^a^r^nzjmd3:^eBARSLAST^pmc^e^e1 OR CROSS^p80^cchang^P^P^a^r^nzdjy:^pCLOSE^sREF^pCLOSE^czjmd+1^P^P/REF^pCLOSE^czjmd+1^P*100^a^r^nIF^pmd^e^e1^P^r^n{^r^nDxtzjy:1^a^r^n}^r^nELSE IF^pmc^e^e4 OR CROSS^p80^cduan^P^P^r^n	{^r^n		Dxtzjy:2^a^r^n	}^r^n		ELSE IF^pzjmd <zjmd1 ^P^r^n			{^r^n				IF^pCROSS^p0^czdjy^P^P dxtzjy:3^a^r^n				ELSE IF^pCROSS^pzdjy^c0^P^P dxtzjy:4^a^r^n			   ELSE IF^pzdjy>0^P dxtzjy:5^a^r^n			   	ELSE dxtzjy:6^a^r^n			}^r^n				ELSE dxtzjy:6^a^r^nIF^pmd^e^e1^P^r^n{^r^nzxtzjy:1^a^r^n}^r^nELSE IF^pmc^e^e4 OR CROSS^p80^czhong^P^P^r^n	{^r^n		zxtzjy:2^a^r^n		}^r^n		ELSE IF^pzjmd <zjmd2 ^P^r^n			{^r^n				IF^pCROSS^p0^czdjy^P^P zxtzjy:3^a^r^n				ELSE IF^pCROSS^pzdjy^c0^P^P zxtzjy:4^a^r^n			   ELSE IF^pzdjy>0^P zxtzjy:5^a^r^n			   	ELSE zxtzjy:6^a^r^n			}^r^n				ELSE zxtzjy:6^a^r^nIF^pmd^e^e1^P^r^n{^r^ncxtzjy:1^a^r^n}^r^nELSE IF^pmc^e^e4 OR CROSS^p80^cCHang^P^P^r^n	{^r^n		cxtzjy:2^a^r^n		}^r^n		ELSE IF^pzjmd <zjmd3^P^r^n			{  ^r^n				zsw:^eHHV^pzdjy^czjmd^P^szdjy^a^r^n				IF^pCROSS^p0^czdjy^P OR CROSS^pzsw^c5^P^P cxtzjy:3^a^r^n				ELSE IF^pCROSS^pzdjy^c0^P^P cxtzjy:4^a^r^n			   ELSE IF^pzdjy>0^P^r^n			   	{^r^n			   IF^pzsw<^e5 ^P	cxtzjy:5^a^r^n			   	ELSE cxtzjy:6^a^r^n			   	}^r^n			   ELSE cxtzjy:6^a^r^n			}^r^n				ELSE cxtzjy:6^a^r^n^r^n^r^n	IF^pr0>^e0^P^r^n		{^r^n	yclr:^e20*r0/zdlr^a^r^n	}^r^n	ELSE yclr:^e2^a^r^nzjzpdf:yclr+80*^p1^sABS^pr0/zdzj^P^P^a^r^nLNzpdf:90*^p1^sMA^pVOL^c3^P/zdl^P+10*ABS^pMAVOL2^sMAVOL1^P/^pMAVOL2+MAVOL1^P^a^r^nggdf:100*^p1^sduan/100^P^a^r^n^r^n,2147430400;