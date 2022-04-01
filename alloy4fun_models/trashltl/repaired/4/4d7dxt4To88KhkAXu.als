open main
pred id4d7dxt4To88KhkAXu_prop5 {
  some f:File | f in File implies eventually f not in File
 }
pred __repair { id4d7dxt4To88KhkAXu_prop5 }
check __repair { id4d7dxt4To88KhkAXu_prop5 <=> prop5o }