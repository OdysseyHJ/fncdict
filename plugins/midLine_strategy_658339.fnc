midLine_strategy,658339,,f1:^eMA^pCLOSE^c20^P^a^r^nCx:^eCLOSE^sf1^a^r^nIF^pREF^pCx^c1^P<0 AND Cx>0^P^r^n	ZXcl^e1^a//买入时机^a^r^n	ELSE IF^pREF^pCx^c1^P>0 AND Cx<0^P^r^n		ZXcl^e2^a//卖出时机^a^r^n		ELSE IF^p^pCLOSE^sHHV^pHIGH^c10^P^P/HHV^pCLOSE^c10^P<^s0.10^P^r^n			ZXcl^e2^a//止损卖出时机^a^r^n			ELSE ZXcl^e1.5^a^r^nRETURN ZXcl^a^r^n,2147430400;