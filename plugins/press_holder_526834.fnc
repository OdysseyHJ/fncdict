press_holder,526834,,IF^pCOUNT^pCLOSE>0^c0^P>250^P  //从当前K线开始向前取250根K线^r^n{^r^nzdz^eHHV^pHIGH^c250^P^a  //zdz:这250根K线的最大值^r^nZXz^eLLV^pLOW^c250^P^a  //zXz:这250根K线的最小值^r^n}^r^nELSE^r^n{^r^nzdz^eHHV^pHIGH^c0^P^a   //从当前K线开始向前取所有的K线^r^nZXz^eLLV^pLOW^c0^P^a^r^n}^r^nup^e0^a^r^nDOwn^e0^a^r^nIF^pzdz^e^eHIGH^P^r^n{^r^nup^e1^a      //当前交易日的最高价为最大值的标志^r^n}^r^nIF^pZXz^e^eLOW^P^r^n{^r^nDOwn^e1^a  //当前交易日的最低价为最小值的标志^r^n}^r^nX1^ezdz^s0.191*^pzdz^szxz^P^a  //第1根黄金分割线^r^nX2^ezdz^s0.382*^pzdz^szxz^P^a  //第2根黄金分割线^r^nX3^ezdz^s0.500*^pzdz^szxz^P^a  //第3根黄金分割线^r^nX4^ezdz^s0.618*^pzdz^szxz^P^a  //第4根黄金分割线^r^n^r^nIF^pup ^e^e1^P^r^n{ ^r^nYLW:1.191* zdz ^s0.191* ZXz^a^r^nZCW:X1^a^r^n}^r^n^r^nIF^pDOwn^e^e1^P^r^n{ ^r^nYLW:X4^a^r^nZCW:1.191* ZXz ^s0.191* zdz^a^r^n}^r^nELSE^r^n  IF^pCLOSE>^eX1^P^r^n{ ^r^nYLW:zdz^a^r^nZCW: X1^a^r^n}^r^n  IF^pCLOSE>^eX2 AND CLOSE<X1^P^r^n{ ^r^nYLW:X1^a^r^nZCW:X2^a^r^n}^r^n  IF^pCLOSE>^eX3 AND CLOSE<X2^P^r^n{ ^r^nYLW:X2^a^r^nZCW:X3^a^r^n}^r^n  IF^pCLOSE>^eX4 AND CLOSE<X3^P^r^n{ ^r^nYLW:X3^a^r^nZCW:X4^a^r^n}^r^n  IF^pCLOSE<X4^P^r^n{ ^r^nYLW:X4^a^r^nZCW:ZXz^a^r^n}^r^n,-2147483648;