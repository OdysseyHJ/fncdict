bearMarket_value,2975,N^e34^c5^c300^c1^rP^e2^c0^c10^c1^rM^e55^c1^c300^c1^rQ^e23^c1^c300^c1^rR^e26^c1^c300^c1^r,������ֵ^e0^a^r^nMID:IF ^pCLOSE>MA^pCLOSE^cm^P^cMA^pHIGH^cq^P^cMA^pLOW^cn^P^P^a^r^nUP:MID+P*STD^pCLOSE^cr^P^a^r^ndn:MID^sP*STD^pCLOSE^cr^P^a^r^n^r^nIsNowBuy:^eFALSE^a^r^n^r^nsBUY:^eCROSS^pLOW^b1^B^cdn^P AND ^pup^sdn^P/dn>0.3 AND CLOSE<MID AND ^pCLOSE^sCLOSE^b1^B^P/CLOSE^b1^B<0.03 AND IsNowBuy^b1^B^e^eFALSE^a //�����ź�^r^nIF^psBUY^e^e1^P ������ֵ^e1^a^r^nDRAWICON ^psBUY^cLOW^c"buy"^P^a^r^n^r^n//�ж������Ƿ�����״̬^r^nIF^psBuy^e^eTRUE OR IsNowBuy^b1^B^e^eTRUE^P^r^n IsNowBuy:^eTRUE^a^r^n//^r^n^r^nkeep^eBARSLAST^psBuy ^e^e TRUE^P^a //�����������^r^nwin5^e0^awin10^e0^awin15^e0^awin20^e0^aLose3^e0^a^r^nCanSell:^eCROSS^pMA^pCLOSE^c10^P^cMA^pCLOSE^c5^P^P^a^r^nIF^pIsNowBuy^e^eTRUE^P^r^n{^r^n IF^pkeep > 1^P^r^n {^r^n  pCost ^e MONEY^bkeep^s1^B/VOL^bkeep^s1^B^a^r^n  //5%ֹӯ^r^n  IF^pwin5^b1^B !^e 1 AND HIGH/PCost>1.05 ^P^r^n  {^r^n        win5^e1^a^r^n     DRAWICON^p1^cHIGH^c"master_sell2"^c" 5%ֹӯ"^P^a^r^n     ������ֵ^e2^a^r^n     //IsNowBuy^eFALSE^a^r^n  }^r^n    ELSE^r^n  {^r^n        win5^ewin5^b1^B^a^r^n  }^r^n  //10%ֹӯ^r^n  IF^pwin10^b1^B !^e 1 AND HIGH/PCost>1.1 ^P^r^n  {^r^n        win10^e1^a^r^n     DRAWICON^p1^cHIGH^c"master_sell4"^c" 10%ֹӯ"^P^a^r^n     ������ֵ^e3^a^r^n     //IsNowBuy^eFALSE^a^r^n  }^r^n    ELSE^r^n  {^r^n        win10^ewin10^b1^B^a^r^n  }^r^n    //15%ֹӯ^r^n  IF^pwin15^b1^B !^e 1 AND HIGH/PCost>1.15 ^P^r^n  {^r^n        win15^e1^a^r^n     DRAWICON^p1^cHIGH^c"master_sell5"^c" 15%ֹӯ"^P^a^r^n     ������ֵ^e4^a^r^n     //IsNowBuy^eFALSE^a^r^n  }^r^n    ELSE^r^n  {^r^n        win15^ewin15^b1^B^a^r^n  }^r^n     //5%ֹ��^r^n  IF^pLose3^b1^B !^e 1 AND ^ppCost^sCLOSE^P/PCost>0.05^P^r^n  {^r^n        Lose3^e1^a^r^n     DRAWICON^p1^cHIGH^c"master_sell3"^c" 5%ֹ��"^P^a^r^n     ������ֵ^e5^a^r^n     IsNowBuy^eFALSE^a^r^n  }^r^n  ELSE^r^n  {^r^n        Lose3^eLose3^b1^B^a^r^n  }^r^n  //����^r^n  IF^pCanSell^e^eTRUE^P^r^n  {^r^n   DRAWICON^p1^cHIGH^c"master_sell1"^c" ��������"^P^a^r^n   ������ֵ^e6^a^r^n   IsNowBuy^eFALSE^a^r^n  }^r^n }^r^n}^r^nRETURN^p������ֵ^P^a,2147430400;