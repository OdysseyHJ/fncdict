共振决策交易策略,723609,,f1:^eMA^pINDEXC^c21^P^a^r^ndt:^eIF^pINDEXC>f1^c^pINDEXC+INDEXH^P/2^cf1^P^a^r^nf2:^eMA^pdt^c1^P^a^r^ngf1:^eMA^pCLOSE^c21^P^a^r^ngdt:^eIF^pCLOSE>gf1^c^pCLOSE+HIGH^P/2^cgf1^P^a^r^ngf2:^eMA^pgdt^c1^P^a^r^ndtxh:^eREF^pf1^c1^P^eREF^pf2^c1^P AND f2>f1^a^r^ngdtxh:^eREF^pgf1^c1^P^eREF^pgf2^c1^P AND gf2>gf1^a^r^nktxh:^eREF^pf1^c1^P<REF^pf2^c1^P AND f2^ef1^a^r^ngktxh:^eREF^pgf1^c1^P<REF^pgf2^c1^P AND gf2^egf1^a^r^nIF^p^pgdtxh AND BARSLAST^pdtxh^P<3^POR^pdtxh AND BARSLAST^pgdtxh^P<3^P^P^r^n{^r^nGZJC^e1^a^r^n}^r^nIF^pgktxh^P^r^n{^r^nGZJC^e2^a^r^n}^r^nIF^pGZJC^e1^P^r^nJJts^e1^a^r^nELSE IF^pGZJC^e2^P^r^n	JJts^e2^a^r^n	ELSE IF^pf2>f1 AND gf2>gf1^P^r^n		JJts^e3^a^r^n		ELSE JJts^e4^a^r^nRETURN JJts^a,2147430400;