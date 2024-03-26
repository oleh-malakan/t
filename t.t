<type>

source {
}

(s source) Next() bool {
    return true
}

(s source) Char() Char {
}

error {}

code {
}

parseCode(src source) (code, error) {
    for src.Next() {
        t, err :<- parseTerm(src)
        if err != nil {
            return nil, err
        }

        if t != nil {

        }
    }  
}

term { 
    value String
}

parseTerm(src source) (term, error) {
    c :<- src.Char()
    t term
    for (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') {
        if t == nil {
            t <- term
        }

        t.value += c
    }

    return t
}


Main() {
    src :<- source

    c, err :<- parseCode(src)
    if err != nil {
        return
    }

}
