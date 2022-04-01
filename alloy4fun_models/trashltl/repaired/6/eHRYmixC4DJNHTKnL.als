open main
pred ideHRYmixC4DJNHTKnL_prop7 {
	some f:File | eventually f in Protected
}
pred __repair { ideHRYmixC4DJNHTKnL_prop7 }
check __repair { ideHRYmixC4DJNHTKnL_prop7 <=> prop7o }