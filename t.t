error {
    Error() string
}

Source {
    [index int64]() char
    [offset int64: len int64]() &Source 
    Len() int64
}

OpenSource(path string) &Source, &error {
    s :<- SourceImplemantation        
    // open source ...
    return s, nil
}

Module {

}

ParseModule(src &Source) *Module, &error {
}

FreeModule(m *Module) {
    ~m
}

Declaration {

}

ModuleDeclaration {

}

ConstantDeclaration {

}

GlobalVariableDeclaration {

}

TypeDeclaration {

}

InterfaceDeclaration {

}

FunctionDeclaration {

}
    
Term {
    Value() string 
}

Variable {
    
}

Operator {

}

Function {

}

Keyword {

}

Sequence {

}

FreeSequence(s *Sequence) {

    ~s
}

ParseSequence(src &Source) *Sequence, &error { 
    seq :<- Sequence
    for {
        s :<- Statement
        err &error
        s, err : StatementParse(src)
        if @err != nil {
            SequenceFree(seq)
            return nil, err
        }

        seq.v <- append(seq.v, s)
    }
    
    return seq, nil 
}

Statement { 
    v []&Term
}

FreeStatement(s *Statement) {
    for _, t : range s.v {
        ~t
    }
  
    ~s.v
}

ParseStatement(src &Source) *Statement, &error {  

}

Main() {
    src &Source
    err &error
    src, err : OpenSource("t.t") 
    if @err != nil { 
        ~err
        return
    }
    defer ~src

    m *Module
    m, err : ParseModule(src)
    if @err != nil { 
        ~err
        return
    }
    defer FreeModule(m) 
}
