PB,592920,,IF^pCODETYPE^e^e0^P^r^n{^r^n	IF ^pHQZSZ !^e0 AND ISNULL^pHQZSZ^P !^e TRUE AND  SCGDQYHJ!^e0 AND ISNULL^pSCGDQYHJ^P !^e TRUE^P^r^n		RETURN HQZSZ/SCGDQYHJ^a^r^n	ELSE^r^n		RETURN 0^a^r^n}^r^n^r^nIF ^pISNULL^pMGJZC^P !^e TRUE AND MGJZC < 0^P^r^n	RETURN NULL^a^r^nELSE IF ^pISNULL^pMGJZC^P ^e^e TRUE^P^r^n	RETURN 0^a^r^nELSE IF ^p MGJZC ^e^e 0^P^r^n	RETURN 0^a^r^nIF ^pISNULL^pNEW^P AND ISNULL^pPRE^P !^e TRUE^P^r^n	RETURN PRE/MGJZC^a^r^nELSE IF ^pISNULL^pNEW^P !^e TRUE^P^r^n	RETURN NEW/MGJZC^a^r^nELSE RETURN 0^a,0;