open main
pred iddCo4JNfAKNvy84ZA7_prop8 {
  always all l: File.link | always (eventually l in Trash)
}
pred __repair { iddCo4JNfAKNvy84ZA7_prop8 }
check __repair { iddCo4JNfAKNvy84ZA7_prop8 <=> prop8o }