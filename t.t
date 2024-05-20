error {
    Error() string
}

Source {
    [offset *int: len *int]() &Source 
    [index *int]() char
    Len() int
}

OpenSource(path string) &Source, &error {
    s :<- SourceImplemantation        
    // open source ...
    return s, nil
}

Module {
    moduleImport                []*ModuleImport
    constantDeclaration         []*ConstantDeclaration
    globalVariableDeclaration   []*GlobalVariableDeclaration
    typeDeclaration             []*TypeDeclaration
    interfaceDeclaration        []*InterfaceDeclaration
    functionDeclaration         []*FunctionDeclaration   
}

ParseModule(src &Source) *Module, &error {
}

FreeModule(m *Module) {
    ~m
}

Declaration {

}

ModuleImport {

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
        if @err {
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
    if @err { 
        ~err
        return
    }
    defer ~src

    m *Module
    m, err : ParseModule(src)
    if @err { 
        ~err
        return
    }
    defer FreeModule(m) 
}
