error {
    Error() string
}

source {
    Next() bool
    Char() char
}

openSource(path string) &source, &error {
    s :<- sourceImplemantation        
    // open source ...
    return s, nil
}

module {

}

moduleParse(src &source) *module, &error {
}

moduleFree(m *module) {
    ~m
}

declaration {

}

muduleDeclaration {

}

constantDeclaration {

}

globalVariableDeclaration {

}

typeDeclaration {

}

interfaceDeclaration {

}

functionDeclaration {

}
    
term {
    Value() string 
}

variable {
    
}

operator {

}

function {

}

keyword {

}

sequence {

}

sequenceFree(s *sequence) {

    ~s
}

sequenceParse(src &source) *sequence, &error { 
    seq :<- sequence
    for {
        s :<- statement
        err &error
        s, err : statementParse(src)
        if @err != nil {
            sequenceFree(seq)
            return nil, err
        }

        seq.v <- append(seq.v, s)
    }
    
    return seq, nil 
}

statement { 
    v []&term
}

statementFree(s *statement) {
    for _, t : range s.v {
        ~t
    }
  
    ~s.v
}

statementParse(src &source) *statement, &error {  

}

Main() {
    src &source
    err &error
    src, err : openSource("t.t") 
    if @err != nil { 
        ~err
        return
    }
    defer ~src

    m *module
    m, err : moduleParse(src)
    if @err != nil { 
        ~err
        return
    }
    defer moduleFree(m) 
}
