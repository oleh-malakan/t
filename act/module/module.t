<act/function>
<act/structure>

Type {    
    GUID [256]byte
    Name [256]byte

    funcArr []function.Type
    funcLen int64
    funcCap int64
    structArr []structure.Type
    structLen int64
    structCap int64
}

addFunction(m *Type, f *function.Type) {
    if m.funcLen == m.funcCap {
        m.funcCap += 10
        new := [m.funcCap]function.Type
        for i := int64(0); i < m.funcLen; i++ {
            new[i] = m.funcArr[i]
        }
        tmp := m.funcArr
        m.funcArr = new
        ~tmp
    }

    m.funcArr[m.funcLen] = f
    m.funcLen++
}

addStructure(m *Type, s *structure.Type) {
    if m.structLen == m.structCap {
        m.structCap += 10
        new := [m.structCap]structure.Type
        for i := int64(0); i < m.structLen; i++ {
            new[i] = m.structArr[i]
        }
        tmp := m.structArr
        m.structArr = new
        ~tmp
    }

    m.structArr[m.structLen] = s
    m.structArr++
}
