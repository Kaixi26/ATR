open main
pred idzNSFqADBYsAP9big5_prop17 {
	always File & Trash not in File' & Trash'
}
pred __repair { idzNSFqADBYsAP9big5_prop17 }
check __repair { idzNSFqADBYsAP9big5_prop17 <=> prop17o }