<module>
<def>
 
modArr {
    mem [] * module.T
    len uint 
    cap uint 
}
 
newModArr() * modArr {
    return * <> modArr {
        mem: nil
        len: 0
        cap: 0
    }
}

addMod(arr * modArr, t * module.T) {
    if arr.len == arr.cap {
        tmp := arr.mem
        arr.cap += def._StepMemCap
        arr.mem = <> [arr.cap] * module.T
        arr.mem[:] = tmp[:arr.len]
        ~ [arr.len] tmp
    }
 
    arr.mem[arr.len] = t
    arr.len++
}
 
freeModArr(arr * modArr) {
}

Main() {
    arr := newModArr()  
 
    path := ([] uint8) uint32(0x2E)
    pathSize := _size(uint32)
    for {
        m, err := module.Parse(path, pathSize)
        if err != 0 {
            // print(err)
            break 
        }
        addMod(arr, m)
 
        // path =
        // pathSize = 
    }
 
    freeModArr(arr)
}
