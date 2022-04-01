open main
pred idQH8kG3dMRFhCZw56m_prop18 {
  	
	
  	always all f: File | f in Trash triggered f not in Protected
}
pred __repair { idQH8kG3dMRFhCZw56m_prop18 }
check __repair { idQH8kG3dMRFhCZw56m_prop18 <=> prop18o }