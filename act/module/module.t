<act/function>
<act/structure>

T {    
    GUID [256]byte
    Name [256]byte

    functionArr []function.T
    functionLen int64
    functionCap int64
    structureArr []structure.T
    structureLen int64
    structureCap int64
}

addFunction(m *T, f *function.T) {
    if m.functionLen == m.functionCap {
        m.functionCap += 64
        new := [m.functionCap]function.T
        for i := int64(0); i < m.functionLen; i++ {
            new[i] = m.functionArr[i]
        }
        tmp := m.functionArr
        m.functionArr = new
        ~tmp
    }

    m.functionArr[m.functionLen] = f
    m.functionLen++
}

addStructure(m *T, s *structure.T) {
    if m.structureLen == m.Cap {
        m.structureCap += 64
        new := [m.sCap]structure.T
        for i := int64(0); i < m.structureLen; i++ {
            new[i] = m.structureArr[i]
        }
        tmp := m.structureArr
        m.structureArr = new
        ~tmp
    }

    m.structureArr[m.structureLen] = s
    m.structureArr++
}

Free(m *T) {
    for i := int64(0); i < m.functionLen; i++ {
        function.Free(m.functionArr[i])
    }
    ~m.functionArr

    for i := int64(0); i < m.structureLen; i++ {
        structure.Free(m.structureArr[i])
    }
    ~m.structureArr
    
    ~m
}
