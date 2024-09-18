(set-logic QF_FP)
(set-info :status unsat)
(declare-fun x () Float64)
(declare-fun y () Float64)
(declare-fun r () Float64)
(assert (= x (fp #b0 #b01011100111 #b1111110000101111001101101000100010000000100100100111)))
(assert (= r (fp #b0 #b01101110011 #b0110100010101111111010000110100110010010111011011000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(assert  (not (= (fp.max x y) r)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)