source {
}

(s source) Next() byte {
  return nil
}

act {
}

term { 
  b []byte
}

(t term) Add(b byte, src source) {
}

Main() {
  src :<- source{}
  act :<- act{}


  t :<- term{}
  for b :<- src.Next(); b != nil {
    if (b > 47 && < 58) || (b > 64 && b < 91) || (b > 96 && b < 123) {
      t.Add(b)
      
    }
  }
}
