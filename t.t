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

ModuleParse(src &Mource) *Module, &error {
}

ModuleFree(m *Module) {
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

SequenceFree(s *Sequence) {

    ~s
}

SequenceParse(src &Source) *Sequence, &error { 
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

StatementFree(s *Statement) {
    for _, t : range s.v {
        ~t
    }
  
    ~s.v
}

StatementParse(src &Source) *Statement, &error {  

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
    m, err : ModuleParse(src)
    if @err != nil { 
        ~err
        return
    }
    defer ModuleFree(m) 
}
