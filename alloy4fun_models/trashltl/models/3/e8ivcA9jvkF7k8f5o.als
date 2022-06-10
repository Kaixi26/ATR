open main
pred ide8ivcA9jvkF7k8f5o_prop4 {
  	some f: File | (always f not in Protected) implies eventually f in Trash

}
pred __repair { ide8ivcA9jvkF7k8f5o_prop4 }
check __repair { ide8ivcA9jvkF7k8f5o_prop4 <=> prop4o }