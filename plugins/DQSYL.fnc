到期收益率,526795,,IF^pMARKETTYPE^e^e16 OR MARKETTYPE^e^e32^P^r^n	{^r^n		A:^eBONDKZZ^p^P^a^r^n		Y:^eBONDPRICEMODE^p^P^a^r^nIF Y^e^e0 THEN^r^nW:^eBONDYIELD^p&bond_cf^cNEW^c&bond_couponcode^c&bond_dqr^c&bond_qxr^c&bond_f^cbond_yjlx^c&bond_par^P^a^r^nELSE IF Y^e^e1 THEN^r^n	{^r^n		IF A^e^e1 THEN^r^n		W:^eBONDYIELD^p&bond_cf^cNEW^sbond_yjlx^c&bond_couponcode^c&bond_dqr^c&bond_qxr^c&bond_f^cbond_yjlx^c&bond_par^P^a^r^n		ELSE^r^n		W:^eBONDYIELD^p&bond_cf^cNEW^sbond_yjlx^c&bond_couponcode^c&bond_dqr^c&bond_qxr^c&bond_f^cbond_yjlx^c&bond_par^P^a^r^n^r^n	}^r^nELSE IF Y^e^e2 THEN^r^nW:^eNEW^a^r^n		}^r^n	^r^nELSE IF^pMARKETTYPE^e^e136^P^r^n   W:^eLASTYIELD^a^r^nRETURN W^a^r^n^r^n,0;