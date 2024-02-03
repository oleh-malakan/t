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
run hello-Aarch64 define, Aarch64 architecture computer
***
    t run define.t -define hello-Aarch64.def
    Hello, Aarch64!
    arch: Aarch64
***
run hello-RISK-V define, RISC-V architecture computer
***
    t run define.t -define hello-RISC-V.def
    Hello, RISC-V!
    arch: RISC-V
***
run hello-x86_64 define, x86_64 architecture computer
***
    t run define.t -define hello-x86_64.def
    Hello, x86_64!
    arch: x86_64
***
