source {
}

(s source) Next() byte {
  return nil
}

act {
}

blockCode {
}

(bc blockCode) Add(b byte, src source) {

  for b :<- src.Next(); b != nil {
    if (b > 47 && < 58) || (b > 64 && b < 91) || (b > 96 && b < 123) {
      
      
    }
  }
}

term { 
  b []byte
}

(t term) Add(b byte, src source) {
}

Main() {
  src :<- source{}
  act :<- act{}

  bc :<- blockCode{}
  bc.Add(nil, src)

}
