�о���_֧�ָ���,199190,,IF^pMARKETTYPE ^e^e 48^P^n{^n    ret ^e HQZSZ/SYS_IND_GDQY^a^n}^nELSE IF^pCODETYPE^e^e0 OR MARKETTYPE^e^e88^P^n{^n    IF ^pHQZSZ !^e0 AND ISNULL^pHQZSZ^P !^e TRUE AND  SCGDQYHJ!^e0 AND ISNULL^pSCGDQYHJ^P !^e TRUE^P^n    {^n        ret ^e HQZSZ/SCGDQYHJ^a^n    }^n    ELSE^n    {^n        ret ^e NULL^a^n    }^n}^nELSE^n{^n    IF ^pISNULL^pMGJZC^P ^e^e TRUE^P^n    {^n        ret ^e NULL^a^n    }^n    ELSE IF ^p MGJZC ^e^e 0^P^n    {^n        ret ^e NULL^a^n    }^n    ELSE^n    {^n        IF ^pISNULL^pNEW^P AND ISNULL^pPRE^P !^e TRUE^P^n        {^n            ret ^e PRE/MGJZC^a^n        }^n        ELSE IF ^pISNULL^pNEW^P !^e TRUE^P^n        {^n            ret ^e NEW/MGJZC^a^n        }^n        ELSE ^n        {^n            ret ^e NULL^a    ^n        }^n    }^n}^nreturn ret^a^n,0