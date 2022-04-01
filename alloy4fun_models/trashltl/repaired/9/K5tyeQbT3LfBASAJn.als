open main
pred idK5tyeQbT3LfBASAJn_prop10 {
	always all p:Protected | p in Protected implies after always p in Protected
}
pred __repair { idK5tyeQbT3LfBASAJn_prop10 }
check __repair { idK5tyeQbT3LfBASAJn_prop10 <=> prop10o }