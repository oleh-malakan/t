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

(t term) Add(b byte) {
}

Main() {
  src :<- source{}
  act :<- act{}

  
  for b :<- src.Next(); b != nil {
    if (b > 64 && b < 91) || (b > 96 && b < 123) {
      t :<- term{}
      t.Add(b)
      
    }
  }
}
