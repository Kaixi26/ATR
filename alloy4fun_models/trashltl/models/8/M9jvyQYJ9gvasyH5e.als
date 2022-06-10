open main
pred idM9jvyQYJ9gvasyH5e_prop9 {
  all f: File | eventually f in Protected implies always f not in Trash
}
pred __repair { idM9jvyQYJ9gvasyH5e_prop9 }
check __repair { idM9jvyQYJ9gvasyH5e_prop9 <=> prop9o }