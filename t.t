<type>

source {
}

(s source) Next() bool {
  return true
}

(s source) Char() Char {
}

code {
}

(c code) Parse(src source) {

  t term
  for src.Next() {
    ch :<- src.Char()
    if (ch >= '0' && ch <= '9') || (ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') {
      t <- term
      t.Parse(src)
    }
  }
}

term { 
}

(t term) Parse(src source) {
}

Main() {
  src :<- source
  c :<- code
  c.Parse(src)

}
