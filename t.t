source {
}

(s source) Next() byte {
  return nil
}

act {
}

Main() {
  src :<- source{}
  act :<- act{}

  for b :<- src.Next(); b != nil {

  }
}
