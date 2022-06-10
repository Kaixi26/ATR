open main
pred id6b6miFQp4yYnskdkh_prop12 {
  eventually some f: File | f in Trash releases f not in Trash
}
pred __repair { id6b6miFQp4yYnskdkh_prop12 }
check __repair { id6b6miFQp4yYnskdkh_prop12 <=> prop12o }