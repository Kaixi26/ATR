open main
pred idyWxvRkor4ZSSbYoYw_prop8 {
    always all l: File.link | always (eventually l in Trash)
}
pred __repair { idyWxvRkor4ZSSbYoYw_prop8 }
check __repair { idyWxvRkor4ZSSbYoYw_prop8 <=> prop8o }