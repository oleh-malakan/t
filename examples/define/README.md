run default define
***
    t run define.t 
    
    arch: <OS ARCH>
***
run hello define
***
    t run define.t -define hello.def
    Hello, world!
    arch: <OS ARCH>
***
run hello-risc-v define, RISC-V architecture computer
***
    t run define.t -define hello-risc-v.def
    Hello, RISC-V!
    arch: RISC-V
***
