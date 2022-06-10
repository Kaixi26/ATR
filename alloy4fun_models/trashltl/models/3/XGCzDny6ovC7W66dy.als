open main
pred idXGCzDny6ovC7W66dy_prop4 {
  	some f: File | eventually always f in Trash

}
pred __repair { idXGCzDny6ovC7W66dy_prop4 }
check __repair { idXGCzDny6ovC7W66dy_prop4 <=> prop4o }