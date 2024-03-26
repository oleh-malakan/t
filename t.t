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

(c code) Parse(src source) error {
    for src.Next() {
        ch :<- src.Char()
        if (ch >= '0' && ch <= '9') || (ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') {
            t :<- term
            err :<- t.Parse(src)
            if err != nil {
                return err
            }
        }
    }
  }  
}

term { 
    value string
}

(t term) Parse(src source) error {    
    for c :<- src.Char();(c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') {
        t.value += c
        if !src.Next() {
            break
        }
    }        
}

Main() {
    src :<- source
    c :<- code
    err :<- c.Parse(src)
    if err != nil {   
        return
    }
}
